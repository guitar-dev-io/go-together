import 'package:flutter_test/flutter_test.dart';
import 'package:gotogether/src/core/error/error.dart';
import 'package:gotogether/src/features/activity/data/implements/activity_repository_impl.dart';
import 'package:gotogether/src/features/activity/data/models/models.dart';
import 'package:gotogether/src/features/activity/data/sources/activity_mock_data_source.dart';
import 'package:gotogether/src/features/activity/data/sources/activity_remote_data_source.dart';
import 'package:gotogether/src/features/activity/domain/entities/entities.dart';
import 'package:gotogether/src/features/activity/domain/usecases/usecases.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_event.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';

/// data source ที่จำลอง backend ล่ม
class _FailingSource extends ActivityMockDataSource {
  _FailingSource(this.error) : super(delay: Duration.zero);
  final Exception error;

  @override
  Future<List<ActivityModel>> getActivities() async => throw error;
  @override
  Future<ActivityModel> join(String id) async => throw error;
}

/// โหลดรายการได้ แต่ join ล้มเหลว
class _JoinFailsSource extends ActivityMockDataSource {
  _JoinFailsSource(this.error) : super(delay: Duration.zero);
  final Exception error;

  @override
  Future<ActivityModel> join(String id) async => throw error;
}

ActivityBloc buildBloc(ActivityDataSource source) {
  final repo = ActivityRepositoryImpl(source);
  return ActivityBloc(
    getActivities: GetActivities(repo),
    createActivity: CreateActivity(repo),
    joinActivity: JoinActivity(repo),
    leaveActivity: LeaveActivity(repo),
    setSaved: SetActivitySaved(repo),
  );
}

Future<ActivityState> settle(ActivityBloc bloc) =>
    bloc.stream.firstWhere((s) => s.busyIds.isEmpty && !s.isLoading);

void main() {
  test('fetch loads activities from data source', () async {
    final bloc = buildBloc(ActivityMockDataSource(delay: Duration.zero));
    bloc.add(const ActivityEvent.fetchActivities());
    final s = await settle(bloc);
    expect(s.activities, isNotEmpty);
    expect(s.error, isNull);
    await bloc.close();
  });

  test('join then leave updates participants and flags', () async {
    final bloc = buildBloc(ActivityMockDataSource(delay: Duration.zero));
    bloc.add(const ActivityEvent.fetchActivities());
    final loaded = await settle(bloc);
    final a = loaded.activities.first;

    bloc.add(ActivityEvent.toggleJoin(a.id));
    var s = await bloc.stream.firstWhere(
        (s) => s.activities.first.isJoined && s.busyIds.isEmpty);
    expect(s.activities.first.currentParticipants, a.currentParticipants + 1);
    expect(s.joined, hasLength(1));

    bloc.add(ActivityEvent.toggleJoin(a.id));
    s = await bloc.stream.firstWhere(
        (s) => !s.activities.first.isJoined && s.busyIds.isEmpty);
    expect(s.activities.first.currentParticipants, a.currentParticipants);
    await bloc.close();
  });

  test('create prepends new activity and reports success', () async {
    final bloc = buildBloc(ActivityMockDataSource(delay: Duration.zero));
    bloc.add(const ActivityEvent.create(NewActivity(
      title: 'ทริปทดสอบ',
      description: 'd',
      tags: ['กิจกรรม'],
      location: 'BKK',
      date: '2026-12-01',
      time: '10:00 - 12:00',
      maxParticipants: 5,
    )));
    final s = await bloc.stream
        .firstWhere((s) => s.submitStatus == SubmitStatus.success);
    expect(s.activities.first.title, 'ทริปทดสอบ');
    expect(s.activities.first.isJoined, isTrue);
    await bloc.close();
  });

  test('network failure surfaces as load error', () async {
    final bloc = buildBloc(_FailingSource(const NetworkException()));
    bloc.add(const ActivityEvent.fetchActivities());
    final s = await settle(bloc);
    expect(s.error, 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต');
    await bloc.close();
  });

  test('server error on join becomes a notice, state unchanged', () async {
    final bloc = buildBloc(_JoinFailsSource(
        const ServerException('ทริปเต็มแล้ว', statusCode: 409)));
    bloc.add(const ActivityEvent.fetchActivities());
    final loaded = await settle(bloc);

    bloc.add(ActivityEvent.toggleJoin(loaded.activities.first.id));
    final s = await bloc.stream.firstWhere((s) => s.notice != null);
    expect(s.notice, 'ทริปเต็มแล้ว');
    expect(s.activities.first.isJoined, isFalse);
    expect(s.busyIds, isEmpty);
    await bloc.close();
  });
}
