part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onAuthInputFieldChanged({
    required AuthFieldType fieldType,
    required String value,
  }) = _OnAuthInputFieldChanged;

  const factory AuthEvent.loginRequested({
    required String email,
    required String password,
  }) = _LoginRequested;

  const factory AuthEvent.registerRequested({
    required String name,
    required String email,
    required String password,
  }) = _RegisterRequested;
}

enum AuthFieldType { name, email, password }
