import 'dart:io';
import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:booking_app_mobile/domain/core/error/exceptions.dart';

class FailureHandler {
  static ApiFailure handleFailure(dynamic e) {
    if (e is SocketException) {
      return const ApiFailure.networkError();
    } else if (e is ServerException) {
      if (e.message.toLowerCase().contains('timeout')) {
        return const ApiFailure.serverTimeout();
      }
      return ApiFailure.serverError(e.message);
    } else {
      return ApiFailure.other(e.toString());
    }
  }
}
