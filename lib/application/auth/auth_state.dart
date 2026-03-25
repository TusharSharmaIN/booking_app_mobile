part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required bool isLoading,
    required StringValue name,
    required EmailAddress email,
    required Password password,
    required bool isAuthenticated,
    required UserEntity user,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
    isLoading: false,
    name: StringValue(''),
    email: EmailAddress(''),
    password: Password(''),
    isAuthenticated: false,
    user: UserEntity.empty(),
    apiFailureOrSuccess: none(),
  );
}
