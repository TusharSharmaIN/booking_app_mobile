import 'package:booking_app_mobile/domain/booking/entities/booking_entity.dart';
import 'package:booking_app_mobile/domain/core/error/exception_handler.dart';
import 'package:booking_app_mobile/infrastructure/core/http/api_client.dart';
import 'package:injectable/injectable.dart';

@injectable
class BookingRemoteDataSource {
  final ApiClient _apiClient;
  final DataSourceExceptionHandler _exceptionHandler;

  BookingRemoteDataSource(this._apiClient, this._exceptionHandler);

  Future<BookingEntity> createBooking(Map<String, dynamic> body) async {
    return await _exceptionHandler.handle(() async {
      final response = await _apiClient.createBooking(body);
      return response.data.toDomain();
    });
  }

  Future<List<BookingEntity>> getMyBookings() async {
    return await _exceptionHandler.handle(() async {
      final response = await _apiClient.getMyBookings();
      return response.data.map((dto) => dto.toDomain()).toList();
    });
  }
}
