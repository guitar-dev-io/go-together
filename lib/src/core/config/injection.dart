//  dependency_injection;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../features/activity/data/implements/activity_repository_impl.dart';
import '../../features/activity/data/sources/activity_mock_data_source.dart';
import '../../features/activity/data/sources/activity_remote_data_source.dart';
import '../../features/activity/domain/repositories/activity_repository.dart';
import '../../features/activity/domain/usecases/usecases.dart';
import '../../features/activity/presentation/bloc/activity_bloc.dart';
import '../network/dio_client.dart';
import '../network/session_store.dart';
import 'env.dart';

final GetIt sl = GetIt.instance;

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await ScreenUtil.ensureScreenSize();
    await setup();
  }

  /// ลงทะเบียน dependency ทั้งหมด (แยกออกมาเพื่อให้เทสต์เรียกได้)
  static Future<void> setup({ActivityDataSource? activityDataSource}) async {
    await sl.reset();

    // core
    sl.registerLazySingleton(SessionStore.new);

    // data source: ต่อ backend จริง หรือใช้ mock ตาม AppEnv
    sl.registerLazySingleton<ActivityDataSource>(() {
      if (activityDataSource != null) return activityDataSource;
      if (AppEnv.useMock) return ActivityMockDataSource();
      return ActivityRemoteDataSource(sl<Dio>());
    });
    if (activityDataSource == null && !AppEnv.useMock) {
      sl.registerLazySingleton<Dio>(() => createDio(sl()));
    }

    // repository
    sl.registerLazySingleton<ActivityRepository>(
      () => ActivityRepositoryImpl(sl()),
    );

    // use cases
    sl.registerLazySingleton(() => GetActivities(sl()));
    sl.registerLazySingleton(() => CreateActivity(sl()));
    sl.registerLazySingleton(() => JoinActivity(sl()));
    sl.registerLazySingleton(() => LeaveActivity(sl()));
    sl.registerLazySingleton(() => SetActivitySaved(sl()));

    // bloc
    sl.registerFactory(() => ActivityBloc(
          getActivities: sl(),
          createActivity: sl(),
          joinActivity: sl(),
          leaveActivity: sl(),
          setSaved: sl(),
        ));
  }
}
