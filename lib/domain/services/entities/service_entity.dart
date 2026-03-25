import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booking_app_mobile/domain/core/value/value_objects.dart';

part 'service_entity.freezed.dart';

@freezed
abstract class ServiceEntity with _$ServiceEntity {
  const ServiceEntity._();

  const factory ServiceEntity({
    required StringValue id,
    required StringValue name,
    required StringValue description,
    required DoubleValue price,
    required IntValue duration,
    required BoolValue isActive,
  }) = _ServiceEntity;

  factory ServiceEntity.empty() => ServiceEntity(
    id: StringValue(''),
    name: StringValue(''),
    description: StringValue(''),
    price: DoubleValue(0.0),
    duration: IntValue(0),
    isActive: BoolValue(true),
  );
}
