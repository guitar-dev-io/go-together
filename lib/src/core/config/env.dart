/// ค่าตั้งค่าสภาพแวดล้อม ส่งผ่าน `--dart-define`
///
/// ตัวอย่าง:
///   flutter run --dart-define=API_BASE_URL=https://api.example.com/v1
///   flutter run --dart-define=USE_MOCK=true      (ไม่ต่อ backend)
class AppEnv {
  static const String apiBaseUrl = String.fromEnvironment('API_BASE_URL');

  /// ถ้าไม่ได้กำหนด API_BASE_URL จะใช้ข้อมูลจำลองอัตโนมัติ
  static const bool _forceMock = bool.fromEnvironment('USE_MOCK');
  static bool get useMock => _forceMock || apiBaseUrl.isEmpty;

  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 20);
}
