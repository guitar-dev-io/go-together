/// Exception ที่ชั้น data throw (แปลงเป็น Failure ที่ repository)
class ServerException implements Exception {
  const ServerException(this.message, {this.statusCode});
  final String message;
  final int? statusCode;

  @override
  String toString() => 'ServerException($statusCode): $message';
}

class NetworkException implements Exception {
  const NetworkException([this.message = 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต']);
  final String message;
}

class UnauthorizedException implements Exception {
  const UnauthorizedException([this.message = 'กรุณาเข้าสู่ระบบใหม่']);
  final String message;
}
