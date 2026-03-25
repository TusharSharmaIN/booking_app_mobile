import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:booking_app_mobile/core/errors/failures.dart';
import 'package:booking_app_mobile/domain/services/entities/service_entity.dart';
import 'package:booking_app_mobile/domain/services/repositories/service_repository.dart';
import 'package:booking_app_mobile/infrastructure/services/datasources/service_remote_datasource.dart';

@Injectable(as: ServiceRepository)
class ServiceRepositoryImpl implements ServiceRepository {
  final ServiceRemoteDataSource remoteDataSource;

  ServiceRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<ServiceEntity>>> getServices() async {
    try {
      final response = await remoteDataSource.getServices();
      if (response.success) {
        return Right(response.data.map((model) => model.toDomain()).toList());
      } else {
        return const Left(ServerFailure('Failed to load services'));
      }
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Unknown Error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ServiceEntity>> getServiceDetail(String id) async {
    try {
      final response = await remoteDataSource.getServiceDetail(id);
      if (response.success) {
        return Right(response.data.toDomain());
      } else {
        return const Left(ServerFailure('Failed to load service details'));
      }
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Unknown Error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
