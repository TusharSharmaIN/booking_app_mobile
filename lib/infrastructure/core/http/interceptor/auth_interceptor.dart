import 'package:booking_app_mobile/infrastructure/core/auth_session/auth_session.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final AuthSession _authSession;
  AuthInterceptor(this._authSession);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _authSession.token;
    if (token != null) {
      options.headers.addAll({'Authorization': 'Bearer $token'});
    }
    handler.next(options);
  }
}
