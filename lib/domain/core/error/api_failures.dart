import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const ApiFailure._();

  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;
  const factory ApiFailure.networkError() = _NetworkError;
  const factory ApiFailure.tokenExpired() = TokenExpired;

  String get message => map(
    other: (other) => other.message,
    serverError: (serverError) => serverError.message,
    poorConnection: (_) => 'Poor Internet connection',
    serverTimeout: (_) => 'Server time out',
    networkError: (_) => 'No Internet connection',
    tokenExpired: (_) => 'Session expired',
  );
}
