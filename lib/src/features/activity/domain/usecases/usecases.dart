import '../../../../core/usecases/usecases.dart';
import '../entities/entities.dart';
import '../repositories/activity_repository.dart';

class GetActivities extends UseCase<List<Activity>, NoParams> {
  const GetActivities(this._repo);
  final ActivityRepository _repo;
  @override
  Future<Result<List<Activity>>> call(NoParams params) => _repo.getActivities();
}

class CreateActivity extends UseCase<Activity, NewActivity> {
  const CreateActivity(this._repo);
  final ActivityRepository _repo;
  @override
  Future<Result<Activity>> call(NewActivity params) =>
      _repo.createActivity(params);
}

class JoinActivity extends UseCase<Activity, String> {
  const JoinActivity(this._repo);
  final ActivityRepository _repo;
  @override
  Future<Result<Activity>> call(String id) => _repo.join(id);
}

class LeaveActivity extends UseCase<Activity, String> {
  const LeaveActivity(this._repo);
  final ActivityRepository _repo;
  @override
  Future<Result<Activity>> call(String id) => _repo.leave(id);
}

class SaveParams {
  const SaveParams(this.id, this.saved);
  final String id;
  final bool saved;
}

class SetActivitySaved extends UseCase<Activity, SaveParams> {
  const SetActivitySaved(this._repo);
  final ActivityRepository _repo;
  @override
  Future<Result<Activity>> call(SaveParams p) => _repo.setSaved(p.id, p.saved);
}
