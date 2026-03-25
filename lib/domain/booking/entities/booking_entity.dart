import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booking_app_mobile/domain/services/entities/service_entity.dart';
import 'package:booking_app_mobile/domain/auth/entities/user_entity.dart';
import 'package:booking_app_mobile/domain/core/value/value_objects.dart';

part 'booking_entity.freezed.dart';

@freezed
abstract class BookingEntity with _$BookingEntity {
  const BookingEntity._();

  const factory BookingEntity({
    required StringValue id,
    required StringValue userId,
    required StringValue serviceId,
    required DateTimeValue scheduledAt,
    required StringValue status,
    required StringValue notes,
    required ServiceEntity service,
    required UserEntity user,
  }) = _BookingEntity;

  factory BookingEntity.empty() => BookingEntity(
    id: StringValue(''),
    userId: StringValue(''),
    serviceId: StringValue(''),
    scheduledAt: DateTimeValue(''),
    status: StringValue(''),
    notes: StringValue(''),
    service: ServiceEntity.empty(),
    user: UserEntity.empty(),
  );
}
