import '../../../../core/error/error.dart';
import '../../../../core/result/result.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/activity_repository.dart';
import '../models/models.dart';
import '../sources/activity_remote_data_source.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  ActivityRepositoryImpl(this._source);
  final ActivityDataSource _source;

  Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Success(await call());
    } on NetworkException catch (e) {
      return Err(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Err(UnauthorizedFailure(e.message));
    } on ServerException catch (e) {
      return Err(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Err(UnknownFailure());
    }
  }

  Future<Result<Activity>> _one(Future<ActivityModel> Function() call) =>
      _run(() async => (await call()).toEntity());

  @override
  Future<Result<List<Activity>>> getActivities() => _run(
      () async => (await _source.getActivities()).map((e) => e.toEntity()).toList());

  @override
  Future<Result<Activity>> createActivity(NewActivity activity) =>
      _one(() => _source.createActivity(activity));

  @override
  Future<Result<Activity>> join(String id) => _one(() => _source.join(id));

  @override
  Future<Result<Activity>> leave(String id) => _one(() => _source.leave(id));

  @override
  Future<Result<Activity>> setSaved(String id, bool saved) =>
      _one(() => _source.setSaved(id, saved));
}
