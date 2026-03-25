import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:booking_app_mobile/domain/core/error/failure_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:booking_app_mobile/domain/services/entities/service_entity.dart';
import 'package:booking_app_mobile/domain/services/repositories/service_repository.dart';
import 'package:booking_app_mobile/infrastructure/services/datasources/service_remote_datasource.dart';

@Injectable(as: ServiceRepository)
class ServiceRepositoryImpl implements ServiceRepository {
  final ServiceRemoteDataSource _remoteDataSource;

  ServiceRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<ApiFailure, List<ServiceEntity>>> getServices() async {
    try {
      final services = await _remoteDataSource.getServices();
      return Right(services);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, ServiceEntity>> getServiceDetail(String id) async {
    try {
      final service = await _remoteDataSource.getServiceDetail(id);
      return Right(service);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
