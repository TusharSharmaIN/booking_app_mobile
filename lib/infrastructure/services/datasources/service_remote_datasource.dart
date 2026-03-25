import 'package:booking_app_mobile/domain/services/entities/service_entity.dart';
import 'package:booking_app_mobile/domain/core/error/exception_handler.dart';
import 'package:booking_app_mobile/infrastructure/core/http/api_client.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServiceRemoteDataSource {
  final ApiClient _apiClient;
  final DataSourceExceptionHandler _exceptionHandler;

  ServiceRemoteDataSource(this._apiClient, this._exceptionHandler);

  Future<List<ServiceEntity>> getServices() async {
    return await _exceptionHandler.handle(() async {
      final response = await _apiClient.getServices();
      return response.data.map((dto) => dto.toDomain()).toList();
    });
  }

  Future<ServiceEntity> getServiceDetail(String id) async {
    return await _exceptionHandler.handle(() async {
      final response = await _apiClient.getServiceDetail(id);
      return response.data.toDomain();
    });
  }
}
