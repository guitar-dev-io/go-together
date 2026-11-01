import '../../../../core/result/result.dart';
import '../entities/entities.dart';

abstract class ActivityRepository {
  Future<Result<List<Activity>>> getActivities();
  Future<Result<Activity>> createActivity(NewActivity activity);
  Future<Result<Activity>> join(String id);
  Future<Result<Activity>> leave(String id);
  Future<Result<Activity>> setSaved(String id, bool saved);
}
