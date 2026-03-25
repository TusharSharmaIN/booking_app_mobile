import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:booking_app_mobile/core/network/api_constants.dart';
import 'package:booking_app_mobile/infrastructure/auth/dtos/auth_response_dto.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
@injectable
abstract class AuthRemoteDataSource {
  @factoryMethod
  factory AuthRemoteDataSource(Dio dio) = _AuthRemoteDataSource;

  @POST(ApiConstants.login)
  Future<AuthDataWrapper> login(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.register)
  Future<AuthDataWrapper> register(@Body() Map<String, dynamic> body);
}
