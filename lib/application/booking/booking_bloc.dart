import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:booking_app_mobile/domain/core/value/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:booking_app_mobile/domain/booking/entities/booking_entity.dart';
import 'package:booking_app_mobile/domain/booking/repositories/booking_repository.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final BookingRepository _bookingRepository;

  BookingBloc(this._bookingRepository) : super(BookingState.initial()) {
    on<BookingEvent>(_onEvent);
  }

  Future<void> _onEvent(BookingEvent event, Emitter<BookingState> emit) async {
    await event.map(
      onBookingInputFieldChanged: (e) {
        switch (e.fieldType) {
          case BookingFieldType.timestamp:
            emit(state.copyWith(date: DateTimeValue(e.value)));
            break;
          case BookingFieldType.notes:
            emit(state.copyWith(notes: StringValue(e.value)));
            break;
        }
      },
      createBooking: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
            createSuccess: false,
            apiFailureOrSuccess: none(),
          ),
        );

        final result = await _bookingRepository.createBooking(
          serviceId: e.serviceId,
          scheduledAt: e.scheduledAt,
          notes: e.notes,
        );

        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccess: optionOf(result),
              ),
            );
          },
          (success) {
            emit(
              state.copyWith(
                isLoading: false,
                createSuccess: true,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
      fetchMyBookings: (_) async {
        emit(state.copyWith(isLoading: true, apiFailureOrSuccess: none()));

        final result = await _bookingRepository.getMyBookings();

        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccess: optionOf(result),
              ),
            );
          },
          (bookings) {
            emit(
              state.copyWith(
                isLoading: false,
                bookings: bookings,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
    );
  }
}
