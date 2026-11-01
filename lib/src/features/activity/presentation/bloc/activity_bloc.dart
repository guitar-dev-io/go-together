import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/constants/data_mock.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';
import 'activity_event.dart';
import 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc() : super(const ActivityState()) {
    on<FetchActivities>(_onFetchActivities);
    on<GetById>((event, emit) {
      final found = state.activities.where((e) => e.id == event.id).firstOrNull;
      if (found != null) emit(state.copyWith(selected: found));
    });
    on<SetLoading>((event, emit) => emit(state.copyWith(isLoading: event.value)));
    on<Selected>((event, emit) => emit(state.copyWith(selected: event.activity)));
    on<Search>((event, emit) => emit(state.copyWith(query: event.query)));
    on<FilterTag>((event, emit) => emit(state.copyWith(tag: event.tag)));
    on<ToggleSaved>(_onToggleSaved);
    on<ToggleJoin>(_onToggleJoin);
    on<Create>(_onCreate);
  }

  Future<void> _onFetchActivities(
    FetchActivities event,
    Emitter<ActivityState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      // จำลอง API call
      await Future.delayed(const Duration(milliseconds: 600));
      final data = DataMock.dataExplore.map(Activity.fromJson).toList();
      emit(state.copyWith(activities: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  void _onToggleSaved(ToggleSaved event, Emitter<ActivityState> emit) {
    final ids = [...state.savedIds];
    ids.contains(event.id) ? ids.remove(event.id) : ids.add(event.id);
    emit(state.copyWith(savedIds: ids));
  }

  void _onToggleJoin(ToggleJoin event, Emitter<ActivityState> emit) {
    final joined = [...state.joinedIds];
    final isJoined = joined.contains(event.id);
    isJoined ? joined.remove(event.id) : joined.add(event.id);

    Activity update(Activity a) {
      if (a.id != event.id) return a;
      if (!isJoined && a.currentParticipants >= a.maxParticipants) return a;
      return a.copyWith(
        currentParticipants: a.currentParticipants + (isJoined ? -1 : 1),
      );
    }

    final target = state.activities.where((a) => a.id == event.id).firstOrNull;
    if (target == null) return;
    // ห้ามเข้าร่วมเมื่อเต็ม
    if (!isJoined && target.currentParticipants >= target.maxParticipants) {
      return;
    }
    final list = state.activities.map(update).toList();
    emit(state.copyWith(
      activities: list,
      joinedIds: joined,
      selected: state.selected?.id == event.id
          ? list.firstWhere((a) => a.id == event.id)
          : state.selected,
    ));
  }

  void _onCreate(Create event, Emitter<ActivityState> emit) {
    emit(state.copyWith(
      activities: [event.activity, ...state.activities],
      joinedIds: [...state.joinedIds, event.activity.id],
    ));
  }
}
