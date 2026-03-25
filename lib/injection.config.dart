// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/auth/auth_bloc.dart' as _i438;
import 'application/booking/booking_bloc.dart' as _i706;
import 'application/services/services_bloc.dart' as _i411;
import 'config.dart' as _i574;
import 'domain/auth/repositories/auth_repository.dart' as _i260;
import 'domain/booking/repositories/booking_repository.dart' as _i1069;
import 'domain/core/error/exception_handler.dart' as _i900;
import 'domain/services/repositories/service_repository.dart' as _i194;
import 'infrastructure/auth/datasources/auth_remote_datasource.dart' as _i550;
import 'infrastructure/auth/repositories/auth_repository_impl.dart' as _i725;
import 'infrastructure/booking/datasources/booking_remote_datasource.dart'
    as _i792;
import 'infrastructure/booking/repositories/booking_repository_impl.dart'
    as _i551;
import 'infrastructure/core/auth_session/auth_session.dart' as _i489;
import 'infrastructure/core/http/api_client.dart' as _i174;
import 'infrastructure/core/http/http.dart' as _i1056;
import 'infrastructure/core/http/interceptor/auth_interceptor.dart' as _i401;
import 'infrastructure/services/datasources/service_remote_datasource.dart'
    as _i207;
import 'infrastructure/services/repositories/service_repository_impl.dart'
    as _i827;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.lazySingleton<_i900.DataSourceExceptionHandler>(
      () => _i900.DataSourceExceptionHandler(),
    );
    gh.lazySingleton<_i574.Config>(() => appModule.config);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => appModule.secureStorage);
    gh.lazySingleton<_i489.AuthSession>(
      () => _i489.AuthSession(gh<_i558.FlutterSecureStorage>()),
    );
    gh.factory<_i401.AuthInterceptor>(
      () => _i401.AuthInterceptor(gh<_i489.AuthSession>()),
    );
    gh.lazySingleton<List<_i361.Interceptor>>(
      () => appModule.interceptors(gh<_i401.AuthInterceptor>()),
    );
    gh.factory<_i1056.HttpService>(
      () => _i1056.HttpService(
        config: gh<_i574.Config>(),
        interceptors: gh<List<_i361.Interceptor>>(),
      ),
    );
    gh.lazySingleton<_i361.Dio>(() => appModule.dio(gh<_i1056.HttpService>()));
    gh.lazySingleton<_i174.ApiClient>(
      () => appModule.apiClient(gh<_i361.Dio>()),
    );
    gh.factory<_i550.AuthRemoteDataSource>(
      () => _i550.AuthRemoteDataSource(
        gh<_i174.ApiClient>(),
        gh<_i900.DataSourceExceptionHandler>(),
      ),
    );
    gh.factory<_i792.BookingRemoteDataSource>(
      () => _i792.BookingRemoteDataSource(
        gh<_i174.ApiClient>(),
        gh<_i900.DataSourceExceptionHandler>(),
      ),
    );
    gh.factory<_i207.ServiceRemoteDataSource>(
      () => _i207.ServiceRemoteDataSource(
        gh<_i174.ApiClient>(),
        gh<_i900.DataSourceExceptionHandler>(),
      ),
    );
    gh.factory<_i194.ServiceRepository>(
      () => _i827.ServiceRepositoryImpl(gh<_i207.ServiceRemoteDataSource>()),
    );
    gh.factory<_i1069.BookingRepository>(
      () => _i551.BookingRepositoryImpl(gh<_i792.BookingRemoteDataSource>()),
    );
    gh.factory<_i411.ServicesBloc>(
      () => _i411.ServicesBloc(gh<_i194.ServiceRepository>()),
    );
    gh.factory<_i260.AuthRepository>(
      () => _i725.AuthRepositoryImpl(
        gh<_i550.AuthRemoteDataSource>(),
        gh<_i489.AuthSession>(),
      ),
    );
    gh.factory<_i438.AuthBloc>(
      () => _i438.AuthBloc(gh<_i260.AuthRepository>()),
    );
    gh.factory<_i706.BookingBloc>(
      () => _i706.BookingBloc(gh<_i1069.BookingRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i464.AppModule {}
