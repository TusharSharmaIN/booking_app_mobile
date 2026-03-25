part of 'booking_bloc.dart';

@freezed
abstract class BookingState with _$BookingState {
  const BookingState._();

  const factory BookingState({
    required DateTimeValue date,
    required StringValue notes,
    required bool isLoading,
    required bool createSuccess,
    required List<BookingEntity> bookings,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _BookingState;

  factory BookingState.initial() => BookingState(
    date: DateTimeValue(''),
    notes: StringValue(''),
    isLoading: false,
    createSuccess: false,
    bookings: const <BookingEntity>[],
    apiFailureOrSuccess: none(),
  );
}
