import 'package:booking_app_mobile/domain/core/error/exception_handler.dart';
import 'package:booking_app_mobile/infrastructure/auth/dtos/auth_response_dto.dart';
import 'package:booking_app_mobile/infrastructure/core/http/api_client.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthRemoteDataSource {
  final ApiClient _apiClient;
  final DataSourceExceptionHandler _exceptionHandler;

  AuthRemoteDataSource(this._apiClient, this._exceptionHandler);

  Future<AuthResponseDto> login(Map<String, dynamic> body) async {
    return await _exceptionHandler.handle(() async {
      final response = await _apiClient.login(body);
      return response.data;
    });
  }

  Future<AuthResponseDto> register(Map<String, dynamic> body) async {
    return await _exceptionHandler.handle(() async {
      final response = await _apiClient.register(body);
      return response.data;
    });
  }
}
