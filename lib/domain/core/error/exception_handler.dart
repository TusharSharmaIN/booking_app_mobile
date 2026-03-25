import 'dart:io';
import 'package:booking_app_mobile/domain/core/error/exceptions.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DataSourceExceptionHandler {
  Future<T> handle<T>(Future<T> Function() call) async {
    try {
      return await call();
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw const SocketException('No Internet connection');
      }
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ServerException(message: 'Connection timeout');
      }
      if (e.response != null) {
        final message = e.response?.data['message'] ?? 'Server error';
        throw ServerException(
          code: e.response?.statusCode ?? 0,
          message: message,
        );
      }
      throw ServerException(message: e.message ?? 'Unknown error');
    } catch (e) {
      if (e is ServerException || e is SocketException) rethrow;
      throw OtherException(message: e.toString());
    }
  }
}
