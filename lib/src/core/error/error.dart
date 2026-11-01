//  error;
export 'exceptions.dart';
export 'failure.dart';

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
