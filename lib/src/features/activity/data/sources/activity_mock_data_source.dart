import '../../../../core/constants/data_mock.dart';
import '../../../../core/error/exceptions.dart';
import '../../domain/entities/activity.dart';
import '../models/models.dart';
import 'activity_remote_data_source.dart';

/// จำลอง backend ในหน่วยความจำ ใช้ตอนพัฒนา/เดโม่/เทสต์
class ActivityMockDataSource implements ActivityDataSource {
  ActivityMockDataSource({this.delay = const Duration(milliseconds: 400)});
  final Duration delay;

  static const _me = UserModel(
    name: 'คุณ',
    profileImage: 'https://picsum.photos/id/64/100',
  );

  late final List<ActivityModel> _items =
      DataMock.dataExplore.map(ActivityModel.fromJson).toList();

  Future<void> _wait() => Future.delayed(delay);

  ActivityModel _find(String id) {
    final i = _items.indexWhere((e) => e.id == id);
    if (i < 0) throw const ServerException('ไม่พบทริป', statusCode: 404);
    return _items[i];
  }

  ActivityModel _replace(ActivityModel m) {
    _items[_items.indexWhere((e) => e.id == m.id)] = m;
    return m;
  }

  @override
  Future<List<ActivityModel>> getActivities() async {
    await _wait();
    return List.of(_items);
  }

  @override
  Future<ActivityModel> createActivity(NewActivity a) async {
    await _wait();
    final m = ActivityModel(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      title: a.title,
      description: a.description,
      tags: a.tags,
      location: a.location,
      date: a.date,
      time: a.time,
      owner: _me,
      maxParticipants: a.maxParticipants,
      currentParticipants: 1,
      photos: a.photos.isNotEmpty
          ? a.photos
          : ['https://picsum.photos/seed/${a.title.hashCode.abs()}/600/400'],
      isJoined: true,
    );
    _items.insert(0, m);
    return m;
  }

  @override
  Future<ActivityModel> join(String id) async {
    await _wait();
    final m = _find(id);
    if (m.isJoined) return m;
    if (m.currentParticipants >= m.maxParticipants) {
      throw const ServerException('ทริปเต็มแล้ว', statusCode: 409);
    }
    return _replace(m.copyWith(
      isJoined: true,
      currentParticipants: m.currentParticipants + 1,
      joinedUsers: [...m.joinedUsers, _me],
    ));
  }

  @override
  Future<ActivityModel> leave(String id) async {
    await _wait();
    final m = _find(id);
    if (!m.isJoined) return m;
    return _replace(m.copyWith(
      isJoined: false,
      currentParticipants: m.currentParticipants - 1,
      joinedUsers: m.joinedUsers.where((u) => u.name != _me.name).toList(),
    ));
  }

  @override
  Future<ActivityModel> setSaved(String id, bool saved) async {
    await _wait();
    return _replace(_find(id).copyWith(isSaved: saved));
  }
}
