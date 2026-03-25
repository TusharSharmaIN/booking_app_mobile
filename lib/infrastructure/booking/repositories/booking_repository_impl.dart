import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:booking_app_mobile/core/errors/failures.dart';
import 'package:booking_app_mobile/domain/booking/entities/booking_entity.dart';
import 'package:booking_app_mobile/domain/booking/repositories/booking_repository.dart';
import 'package:booking_app_mobile/infrastructure/booking/datasources/booking_remote_datasource.dart';

@Injectable(as: BookingRepository)
class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource remoteDataSource;

  BookingRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, BookingEntity>> createBooking({
    required String serviceId,
    required DateTime scheduledAt,
    String? notes,
  }) async {
    try {
      final response = await remoteDataSource.createBooking({
        'serviceId': serviceId,
        'scheduledAt': scheduledAt.toIso8601String(),
        if (notes != null && notes.isNotEmpty) 'notes': notes,
      });
      if (response.success) {
        return Right(response.data.toDomain());
      } else {
        return const Left(ServerFailure('Failed to create booking'));
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return const Left(AuthFailure());
      }
      return Left(ServerFailure(e.message ?? 'Unknown Error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookingEntity>>> getMyBookings() async {
    try {
      final response = await remoteDataSource.getMyBookings();
      if (response.success) {
        return Right(response.data.map((model) => model.toDomain()).toList());
      } else {
        return const Left(ServerFailure('Failed to load bookings'));
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return const Left(AuthFailure());
      }
      return Left(ServerFailure(e.message ?? 'Unknown Error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
