import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../entities/service_entity.dart';

abstract class ServiceRepository {
  Future<Either<Failure, List<ServiceEntity>>> getServices();
  Future<Either<Failure, ServiceEntity>> getServiceDetail(String id);
}
