part of 'booking_bloc.dart';

@freezed
abstract class BookingState with _$BookingState {
  const BookingState._();

  const factory BookingState({
    required bool isLoading,
    required bool createSuccess,
    required List<BookingEntity> bookings,
    required Option<Either<Failure, dynamic>> apiFailureOrSuccess,
  }) = _BookingState;

  factory BookingState.initial() => BookingState(
    isLoading: false,
    createSuccess: false,
    bookings: const <BookingEntity>[],
    apiFailureOrSuccess: none(),
  );
}
