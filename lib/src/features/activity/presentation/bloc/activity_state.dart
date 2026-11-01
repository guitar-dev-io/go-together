import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotogether/src/core/models/activity/activity_model.dart';

part 'activity_state.freezed.dart';
part 'activity_state.g.dart'; // ✅ สำคัญสำหรับ fromJson()

// @freezed
// class ActivityState with _$ActivityState {
//   const factory ActivityState.initial() = _Initial;
//   const factory ActivityState.loading() = _Loading;
//   const factory ActivityState.loaded(List<Activity> activities) = _Loaded;
//   const factory ActivityState.selected(Activity activity) = _Selected;

//   const factory ActivityState.error(String message) = _Error;

// }

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    @Default([]) List<Activity> activities,
    Activity? selected,
    @Default(false) bool isLoading,
    String? error,
    @Default('') String query,
    String? tag,
    @Default([]) List<String> savedIds,
    @Default([]) List<String> joinedIds,
  }) = _ActivityState;

  factory ActivityState.fromJson(Map<String, dynamic> json) =>
      _$ActivityStateFromJson(json);
}
