import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:booking_app_mobile/domain/core/error/failure_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:booking_app_mobile/infrastructure/core/auth_session/auth_session.dart';
import 'package:booking_app_mobile/domain/auth/entities/user_entity.dart';
import 'package:booking_app_mobile/domain/auth/repositories/auth_repository.dart';
import 'package:booking_app_mobile/infrastructure/auth/datasources/auth_remote_datasource.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthSession _authSession;

  AuthRepositoryImpl(this._remoteDataSource, this._authSession);

  @override
  Future<Either<ApiFailure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _remoteDataSource.login({
        'email': email,
        'password': password,
      });

      await _authSession.saveSession(response.token);
      return Right(response.user.toDomain());
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, UserEntity>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _remoteDataSource.register({
        'name': name,
        'email': email,
        'password': password,
      });

      await _authSession.saveSession(response.token);
      return Right(response.user.toDomain());
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
