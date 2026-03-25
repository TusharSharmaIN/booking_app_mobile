import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:booking_app_mobile/infrastructure/core/network/api_constants.dart';
import 'package:booking_app_mobile/infrastructure/booking/dtos/booking_dto.dart';

part 'booking_remote_datasource.g.dart';

@RestApi()
@injectable
abstract class BookingRemoteDataSource {
  @factoryMethod
  factory BookingRemoteDataSource(Dio dio) = _BookingRemoteDataSource;

  @POST(ApiConstants.bookings)
  Future<SingleBookingResponse> createBooking(
    @Body() Map<String, dynamic> body,
  );

  @GET(ApiConstants.myBookings)
  Future<ListBookingResponse> getMyBookings();
}
