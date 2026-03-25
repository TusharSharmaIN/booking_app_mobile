import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:booking_app_mobile/domain/auth/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<ApiFailure, UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<ApiFailure, UserEntity>> register({
    required String name,
    required String email,
    required String password,
  });
}
