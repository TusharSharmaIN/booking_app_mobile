import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:booking_app_mobile/core/auth/auth_session.dart';
import 'package:booking_app_mobile/core/errors/failures.dart';
import 'package:booking_app_mobile/domain/auth/entities/user_entity.dart';
import 'package:booking_app_mobile/domain/auth/repositories/auth_repository.dart';
import 'package:booking_app_mobile/infrastructure/auth/datasources/auth_remote_datasource.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthSession authSession;

  AuthRepositoryImpl(this.remoteDataSource, this.authSession);

  @override
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await remoteDataSource.login({
        'email': email,
        'password': password,
      });

      if (response.success) {
        await authSession.saveSession(response.data.token);
        return Right(response.data.user.toDomain());
      } else {
        return const Left(AuthFailure());
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return const Left(AuthFailure());
      }
      return Left(ServerFailure(e.message ?? 'Unknown Error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await remoteDataSource.register({
        'name': name,
        'email': email,
        'password': password,
      });

      if (response.success) {
        await authSession.saveSession(response.data.token);
        return Right(response.data.user.toDomain());
      } else {
        return const Left(AuthFailure());
      }
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Unknown Error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
