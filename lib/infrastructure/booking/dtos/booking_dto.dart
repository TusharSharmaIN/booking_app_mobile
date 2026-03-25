import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booking_app_mobile/domain/booking/entities/booking_entity.dart';
import 'package:booking_app_mobile/domain/core/value/value_objects.dart';
import 'package:booking_app_mobile/infrastructure/services/dtos/service_dto.dart';
import 'package:booking_app_mobile/infrastructure/auth/dtos/user_dto.dart';

part 'booking_dto.freezed.dart';
part 'booking_dto.g.dart';

@freezed
abstract class BookingDto with _$BookingDto {
  const BookingDto._();

  const factory BookingDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'serviceId') required String serviceId,
    @JsonKey(name: 'scheduledAt') required DateTime scheduledAt,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'notes') required String notes,
    @JsonKey(name: 'service') required ServiceDto service,
    @JsonKey(name: 'user') required UserDto user,
  }) = _BookingDto;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);

  BookingEntity toDomain() => BookingEntity(
    id: StringValue(id),
    userId: StringValue(userId),
    serviceId: StringValue(serviceId),
    scheduledAt: DateTimeValue(scheduledAt.toIso8601String()),
    status: StringValue(status),
    notes: StringValue(notes),
    service: service.toDomain(),
    user: user.toDomain(),
  );

  factory BookingDto.fromDomain(BookingEntity booking) => BookingDto(
    id: booking.id.getOrCrash(),
    userId: booking.userId.getOrCrash(),
    serviceId: booking.serviceId.getOrCrash(),
    scheduledAt: booking.scheduledAt.dateTime,
    status: booking.status.getOrCrash(),
    notes: booking.notes.getOrCrash(),
    service: ServiceDto.fromDomain(booking.service),
    user: UserDto.fromDomain(booking.user),
  );
}

@freezed
abstract class SingleBookingResponse with _$SingleBookingResponse {
  const factory SingleBookingResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'data') required BookingDto data,
  }) = _SingleBookingResponse;

  factory SingleBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleBookingResponseFromJson(json);
}

@freezed
abstract class ListBookingResponse with _$ListBookingResponse {
  const factory ListBookingResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'data') required List<BookingDto> data,
  }) = _ListBookingResponse;

  factory ListBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$ListBookingResponseFromJson(json);
}
