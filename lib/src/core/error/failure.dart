import 'package:equatable/equatable.dart';

/// ความล้มเหลวที่ชั้น domain/presentation รับรู้
sealed class Failure extends Equatable {
  const Failure(this.message);
  final String message;

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message, {this.statusCode});
  final int? statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต']);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([super.message = 'กรุณาเข้าสู่ระบบใหม่']);
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'เกิดข้อผิดพลาดที่ไม่คาดคิด']);
}
