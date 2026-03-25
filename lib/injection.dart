import 'package:booking_app_mobile/config.dart';
import 'package:booking_app_mobile/infrastructure/core/http/api_client.dart';
import 'package:booking_app_mobile/infrastructure/core/http/http.dart';
import 'package:booking_app_mobile/infrastructure/core/http/interceptor/auth_interceptor.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:booking_app_mobile/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();

@module
abstract class AppModule {
  @lazySingleton
  Config get config => Config();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  List<Interceptor> interceptors(AuthInterceptor authInterceptor) => [
    authInterceptor,
  ];

  @lazySingleton
  Dio dio(HttpService httpService) => httpService.dio();

  @lazySingleton
  ApiClient apiClient(Dio dio) => ApiClient(dio);
}
