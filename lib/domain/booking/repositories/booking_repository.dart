import 'package:dartz/dartz.dart';
import '../../../core/errors/failures.dart';
import '../entities/booking_entity.dart';

abstract class BookingRepository {
  Future<Either<Failure, BookingEntity>> createBooking({
    required String serviceId,
    required DateTime scheduledAt,
    String? notes,
  });

  Future<Either<Failure, List<BookingEntity>>> getMyBookings();
}
