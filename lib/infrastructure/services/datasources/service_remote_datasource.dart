import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:booking_app_mobile/core/network/api_constants.dart';
import 'package:booking_app_mobile/infrastructure/services/dtos/service_dto.dart';

part 'service_remote_datasource.g.dart';

@RestApi()
@injectable
abstract class ServiceRemoteDataSource {
  @factoryMethod
  factory ServiceRemoteDataSource(Dio dio) = _ServiceRemoteDataSource;

  @GET(ApiConstants.services)
  Future<ServicesListResponse> getServices();

  @GET('${ApiConstants.services}/{id}')
  Future<ServiceDetailResponse> getServiceDetail(@Path('id') String id);
}
