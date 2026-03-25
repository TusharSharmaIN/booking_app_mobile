part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.onBookingInputFieldChanged({
    required BookingFieldType fieldType,
    required String value,
  }) = _OnBookingInputFieldChanged;

  const factory BookingEvent.createBooking({
    required String serviceId,
    required DateTime scheduledAt,
    String? notes,
  }) = _CreateBooking;

  const factory BookingEvent.fetchMyBookings() = _FetchMyBookings;
}

enum BookingFieldType { timestamp, notes }
