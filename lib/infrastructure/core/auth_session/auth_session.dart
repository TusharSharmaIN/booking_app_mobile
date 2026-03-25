import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthSession {
  static const _tokenKey = 'auth_token';
  final FlutterSecureStorage _storage;

  String? _token;

  AuthSession(this._storage);

  bool get isLoggedIn => _token != null;
  String? get token => _token;

  Future<void> init() async {
    _token = await _storage.read(key: _tokenKey);
  }

  Future<void> saveSession(String token) async {
    _token = token;
    await _storage.write(key: _tokenKey, value: token);
  }

  Future<void> clearSession() async {
    _token = null;
    await _storage.delete(key: _tokenKey);
  }
}
