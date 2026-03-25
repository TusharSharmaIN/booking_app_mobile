import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:booking_app_mobile/domain/core/error/failure_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:booking_app_mobile/domain/booking/entities/booking_entity.dart';
import 'package:booking_app_mobile/domain/booking/repositories/booking_repository.dart';
import 'package:booking_app_mobile/infrastructure/booking/datasources/booking_remote_datasource.dart';

@Injectable(as: BookingRepository)
class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource _remoteDataSource;

  BookingRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<ApiFailure, BookingEntity>> createBooking({
    required String serviceId,
    required DateTime scheduledAt,
    String? notes,
  }) async {
    try {
      final booking = await _remoteDataSource.createBooking({
        'serviceId': serviceId,
        'scheduledAt': scheduledAt.toIso8601String(),
        if (notes != null && notes.isNotEmpty) 'notes': notes,
      });
      return Right(booking);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<BookingEntity>>> getMyBookings() async {
    try {
      final bookings = await _remoteDataSource.getMyBookings();
      return Right(bookings);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
