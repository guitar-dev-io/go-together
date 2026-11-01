import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../config/env.dart';
import '../error/exceptions.dart';
import 'session_store.dart';

Dio createDio(SessionStore session) {
  final dio = Dio(BaseOptions(
    baseUrl: AppEnv.apiBaseUrl,
    connectTimeout: AppEnv.connectTimeout,
    receiveTimeout: AppEnv.receiveTimeout,
    headers: {'Accept': 'application/json'},
  ));

  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
    final token = session.token;
    if (token != null) options.headers['Authorization'] = 'Bearer $token';
    handler.next(options);
  }));

  dio.interceptors.add(RetryInterceptor(
    dio: dio,
    retries: 2,
    retryDelays: const [Duration(seconds: 1), Duration(seconds: 2)],
  ));

  if (kDebugMode) {
    dio.interceptors.add(PrettyDioLogger(requestBody: true, compact: true));
  }
  return dio;
}

/// แปลง [DioException] เป็น exception ของแอป
Never throwFromDio(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionError:
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      throw const NetworkException();
    default:
  }
  final code = e.response?.statusCode;
  if (code == 401) throw const UnauthorizedException();
  final data = e.response?.data;
  final msg = data is Map && data['message'] is String
      ? data['message'] as String
      : e.message ?? 'เซิร์ฟเวอร์ผิดพลาด';
  throw ServerException(msg, statusCode: code);
}
