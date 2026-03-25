import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:flutter/material.dart';
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

  Color getStatusColor() {
    switch (status.getValue().toUpperCase()) {
      case 'PENDING':
        return BaseColors.statusPending;
      case 'CONFIRMED':
        return BaseColors.statusConfirmed;
      case 'CANCELLED':
        return BaseColors.statusCancelled;
      case 'COMPLETED':
        return BaseColors.statusCompleted;
      default:
        return BaseColors.statusUnknown;
    }
  }

  Color getStatusBgColor() {
    switch (status.getValue().toUpperCase()) {
      case 'PENDING':
        return BaseColors.statusPendingBg;
      case 'CONFIRMED':
        return BaseColors.statusConfirmedBg;
      case 'CANCELLED':
        return BaseColors.statusCancelledBg;
      case 'COMPLETED':
        return BaseColors.statusCompletedBg;
      default:
        return BaseColors.statusUnknownBg;
    }
  }
}
