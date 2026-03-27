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
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'userId', defaultValue: '') required String userId,
    @JsonKey(name: 'serviceId', defaultValue: '') required String serviceId,
    @JsonKey(name: 'scheduledAt', defaultValue: '')
    required String scheduledAt,
    @JsonKey(name: 'status', defaultValue: '') required String status,
    @JsonKey(name: 'notes', defaultValue: '') required String notes,
    @Default(ServiceDto.empty) @JsonKey(name: 'service') ServiceDto service,
    @Default(UserDto.empty) @JsonKey(name: 'user') UserDto user,
  }) = _BookingDto;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);

  BookingEntity toDomain() => BookingEntity(
    id: StringValue(id),
    userId: StringValue(userId),
    serviceId: StringValue(serviceId),
    scheduledAt: DateTimeValue(scheduledAt),
    status: StringValue(status),
    notes: StringValue(notes),
    service: service.toDomain(),
    user: user.toDomain(),
  );

  factory BookingDto.fromDomain(BookingEntity booking) => BookingDto(
    id: booking.id.getOrCrash(),
    userId: booking.userId.getOrCrash(),
    serviceId: booking.serviceId.getOrCrash(),
    scheduledAt: booking.scheduledAt.getOrCrash(),
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
