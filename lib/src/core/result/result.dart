import '../error/failure.dart';

/// ผลลัพธ์ของ use case: สำเร็จ หรือ ล้มเหลว (ไม่ต้องพึ่งแพ็กเกจเพิ่ม)
sealed class Result<T> {
  const Result();

  R when<R>({
    required R Function(T data) success,
    required R Function(Failure failure) failure,
  }) =>
      switch (this) {
        Success<T>(:final data) => success(data),
        Err<T>(failure: final f) => failure(f),
      };
}

class Success<T> extends Result<T> {
  const Success(this.data);
  final T data;
}

class Err<T> extends Result<T> {
  const Err(this.failure);
  final Failure failure;
}
