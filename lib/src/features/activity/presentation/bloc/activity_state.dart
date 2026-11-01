import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/entities.dart';

part 'activity_state.freezed.dart';

enum SubmitStatus { idle, submitting, success, failure }

@freezed
class ActivityState with _$ActivityState {
  const ActivityState._();

  const factory ActivityState({
    @Default([]) List<Activity> activities,
    Activity? selected,
    @Default(false) bool isLoading,
    /// ข้อผิดพลาดตอนโหลดรายการ
    String? error,
    @Default('') String query,
    String? tag,
    @Default(SubmitStatus.idle) SubmitStatus submitStatus,
    /// ข้อความแจ้งผู้ใช้ครั้งเดียว (snackbar) เช่น join ไม่สำเร็จ
    String? notice,
    /// id ที่กำลังรอ backend ตอบ (กันกดซ้ำ)
    @Default([]) List<String> busyIds,
  }) = _ActivityState;

  List<Activity> get joined => activities.where((a) => a.isJoined).toList();
  List<Activity> get saved => activities.where((a) => a.isSaved).toList();
}
