/// เก็บ access token ในหน่วยความจำ (เปลี่ยนเป็น secure storage ได้ภายหลัง)
class SessionStore {
  String? _token;
  String? get token => _token;
  void setToken(String? value) => _token = value;
  void clear() => _token = null;
}
