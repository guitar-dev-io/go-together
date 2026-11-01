import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';
import 'activity_event.dart';
import 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc({
    required GetActivities getActivities,
    required CreateActivity createActivity,
    required JoinActivity joinActivity,
    required LeaveActivity leaveActivity,
    required SetActivitySaved setSaved,
  })  : _getActivities = getActivities,
        _createActivity = createActivity,
        _joinActivity = joinActivity,
        _leaveActivity = leaveActivity,
        _setSaved = setSaved,
        super(const ActivityState()) {
    on<FetchActivities>(_onFetch);
    on<Selected>((e, emit) => emit(state.copyWith(selected: e.activity)));
    on<Search>((e, emit) => emit(state.copyWith(query: e.query)));
    on<FilterTag>((e, emit) => emit(state.copyWith(tag: e.tag)));
    on<ToggleSaved>(_onToggleSaved);
    on<ToggleJoin>(_onToggleJoin);
    on<Create>(_onCreate);
    on<ClearNotice>((e, emit) => emit(state.copyWith(notice: null)));
  }

  final GetActivities _getActivities;
  final CreateActivity _createActivity;
  final JoinActivity _joinActivity;
  final LeaveActivity _leaveActivity;
  final SetActivitySaved _setSaved;

  Future<void> _onFetch(FetchActivities e, Emitter<ActivityState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _getActivities(const NoParams());
    result.when(
      success: (list) => emit(state.copyWith(activities: list, isLoading: false)),
      failure: (f) => emit(state.copyWith(isLoading: false, error: f.message)),
    );
  }

  /// แทนที่ activity ที่ backend ส่งกลับมาในรายการ (และ selected)
  ActivityState _applyUpdated(Activity updated) => state.copyWith(
        activities: [
          for (final a in state.activities) a.id == updated.id ? updated : a,
        ],
        selected: state.selected?.id == updated.id ? updated : state.selected,
        busyIds: state.busyIds.where((i) => i != updated.id).toList(),
      );

  Future<void> _mutate(
    String id,
    Emitter<ActivityState> emit,
    Future<Result<Activity>> Function(Activity current) call,
  ) async {
    if (state.busyIds.contains(id)) return;
    final current = state.activities.where((a) => a.id == id).firstOrNull;
    if (current == null) return;
    emit(state.copyWith(busyIds: [...state.busyIds, id]));
    final result = await call(current);
    result.when(
      success: (updated) => emit(_applyUpdated(updated)),
      failure: (f) => emit(state.copyWith(
        notice: f.message,
        busyIds: state.busyIds.where((i) => i != id).toList(),
      )),
    );
  }

  Future<void> _onToggleSaved(ToggleSaved e, Emitter<ActivityState> emit) =>
      _mutate(e.id, emit, (a) => _setSaved(SaveParams(a.id, !a.isSaved)));

  Future<void> _onToggleJoin(ToggleJoin e, Emitter<ActivityState> emit) =>
      _mutate(e.id, emit, (a) {
        if (!a.isJoined && a.isFull) {
          return Future.value(Err(const ServerFailure('ทริปเต็มแล้ว')));
        }
        return a.isJoined ? _leaveActivity(a.id) : _joinActivity(a.id);
      });

  Future<void> _onCreate(Create e, Emitter<ActivityState> emit) async {
    emit(state.copyWith(submitStatus: SubmitStatus.submitting));
    final result = await _createActivity(e.activity);
    result.when(
      success: (a) => emit(state.copyWith(
        activities: [a, ...state.activities],
        submitStatus: SubmitStatus.success,
      )),
      failure: (f) => emit(state.copyWith(
        submitStatus: SubmitStatus.failure,
        notice: f.message,
      )),
    );
    emit(state.copyWith(submitStatus: SubmitStatus.idle));
  }
}
