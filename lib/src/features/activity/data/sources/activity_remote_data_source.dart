import 'package:dio/dio.dart';

import '../../../../core/network/dio_client.dart';
import '../../domain/entities/activity.dart';
import '../models/models.dart';

/// สัญญาของ data source (มีทั้งแบบ backend จริง และ mock)
abstract class ActivityDataSource {
  Future<List<ActivityModel>> getActivities();
  Future<ActivityModel> createActivity(NewActivity activity);
  Future<ActivityModel> join(String id);
  Future<ActivityModel> leave(String id);
  Future<ActivityModel> setSaved(String id, bool saved);
}

/// เรียก REST API ของ backend
///
/// Endpoints ที่คาดหวัง (response เป็น object ตรง ๆ หรือห่อด้วย `{"data": ...}`):
///   GET    /activities               -> [Activity]
///   POST   /activities               -> Activity
///   POST   /activities/{id}/join     -> Activity (ที่อัปเดตแล้ว)
///   DELETE /activities/{id}/join     -> Activity
///   PUT    /activities/{id}/save     -> Activity   (บันทึก)
///   DELETE /activities/{id}/save     -> Activity   (เลิกบันทึก)
class ActivityRemoteDataSource implements ActivityDataSource {
  ActivityRemoteDataSource(this._dio);
  final Dio _dio;

  dynamic _unwrap(dynamic body) =>
      body is Map<String, dynamic> && body.containsKey('data')
          ? body['data']
          : body;

  Future<T> _guard<T>(Future<T> Function() run) async {
    try {
      return await run();
    } on DioException catch (e) {
      throwFromDio(e);
    }
  }

  ActivityModel _one(Response<dynamic> r) => ActivityModel.fromJson(
      Map<String, dynamic>.from(_unwrap(r.data) as Map));

  @override
  Future<List<ActivityModel>> getActivities() => _guard(() async {
        final r = await _dio.get('/activities');
        return (_unwrap(r.data) as List)
            .map((e) =>
                ActivityModel.fromJson(Map<String, dynamic>.from(e as Map)))
            .toList();
      });

  @override
  Future<ActivityModel> createActivity(NewActivity activity) =>
      _guard(() async => _one(await _dio.post('/activities', data: activity.toJson())));

  @override
  Future<ActivityModel> join(String id) =>
      _guard(() async => _one(await _dio.post('/activities/$id/join')));

  @override
  Future<ActivityModel> leave(String id) =>
      _guard(() async => _one(await _dio.delete('/activities/$id/join')));

  @override
  Future<ActivityModel> setSaved(String id, bool saved) => _guard(() async =>
      _one(saved
          ? await _dio.put('/activities/$id/save')
          : await _dio.delete('/activities/$id/save')));
}
