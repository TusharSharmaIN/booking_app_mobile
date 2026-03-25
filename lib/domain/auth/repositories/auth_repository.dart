import 'package:dartz/dartz.dart';
import 'package:booking_app_mobile/core/errors/failures.dart';
import 'package:booking_app_mobile/domain/auth/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> register({
    required String name,
    required String email,
    required String password,
  });
}
