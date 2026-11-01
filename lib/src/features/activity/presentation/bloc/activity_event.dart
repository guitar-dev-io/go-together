import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/entities.dart';

part 'activity_event.freezed.dart';

@freezed
class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.fetchActivities() = FetchActivities;
  const factory ActivityEvent.selected(Activity activity) = Selected;
  const factory ActivityEvent.search(String query) = Search;
  const factory ActivityEvent.filterTag(String? tag) = FilterTag;
  const factory ActivityEvent.toggleSaved(String id) = ToggleSaved;
  const factory ActivityEvent.toggleJoin(String id) = ToggleJoin;
  const factory ActivityEvent.create(NewActivity activity) = Create;
  const factory ActivityEvent.clearNotice() = ClearNotice;
}
