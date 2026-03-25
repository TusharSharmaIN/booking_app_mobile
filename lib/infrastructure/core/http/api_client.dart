import 'package:booking_app_mobile/infrastructure/core/http/api_constants.dart';
import 'package:booking_app_mobile/infrastructure/auth/dtos/auth_response_dto.dart';
import 'package:booking_app_mobile/infrastructure/booking/dtos/booking_dto.dart';
import 'package:booking_app_mobile/infrastructure/services/dtos/service_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  // Auth APIs
  @POST(ApiConstants.login)
  Future<AuthDataWrapper> login(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.register)
  Future<AuthDataWrapper> register(@Body() Map<String, dynamic> body);

  // Services APIs
  @GET(ApiConstants.services)
  Future<ServicesListResponse> getServices();

  @GET('${ApiConstants.services}/{id}')
  Future<ServiceDetailResponse> getServiceDetail(@Path('id') String id);

  // Booking APIs
  @GET(ApiConstants.myBookings)
  Future<ListBookingResponse> getMyBookings();

  @POST(ApiConstants.bookings)
  Future<SingleBookingResponse> createBooking(
    @Body() Map<String, dynamic> body,
  );
}
