part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required bool isLoading,
    required bool isAuthenticated,
    required UserEntity user,
    required Option<Either<Failure, dynamic>> apiFailureOrSuccess,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
    isLoading: false,
    isAuthenticated: false,
    user: UserEntity.empty(),
    apiFailureOrSuccess: none(),
  );
}
