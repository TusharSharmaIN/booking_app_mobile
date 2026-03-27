import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booking_app_mobile/domain/services/entities/service_entity.dart';
import 'package:booking_app_mobile/domain/core/value/value_objects.dart';

part 'service_dto.freezed.dart';
part 'service_dto.g.dart';

@freezed
abstract class ServiceDto with _$ServiceDto {
  const ServiceDto._();

  const factory ServiceDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'price') required double price,
    @JsonKey(name: 'duration') required int duration,
    @JsonKey(name: 'isActive') required bool isActive,
  }) = _ServiceDto;

  factory ServiceDto.fromJson(Map<String, dynamic> json) =>
      _$ServiceDtoFromJson(json);

  ServiceEntity toDomain() => ServiceEntity(
    id: StringValue(id),
    name: StringValue(name),
    description: StringValue(description),
    price: DoubleValue(price),
    duration: IntValue(duration),
    isActive: BoolValue(isActive),
  );

  factory ServiceDto.fromDomain(ServiceEntity service) => ServiceDto(
    id: service.id.getOrCrash(),
    name: service.name.getOrCrash(),
    description: service.description.getOrCrash(),
    price: service.price.getOrCrash(),
    duration: service.duration.getOrCrash(),
    isActive: service.isActive.getOrCrash(),
  );

  static const empty = ServiceDto(
    id: '',
    name: '',
    description: '',
    price: 0,
    duration: 0,
    isActive: false,
  );
}

@freezed
abstract class ServicesListResponse with _$ServicesListResponse {
  const factory ServicesListResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'data') required List<ServiceDto> data,
  }) = _ServicesListResponse;

  factory ServicesListResponse.fromJson(Map<String, dynamic> json) =>
      _$ServicesListResponseFromJson(json);
}

@freezed
abstract class ServiceDetailResponse with _$ServiceDetailResponse {
  const factory ServiceDetailResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'data') required ServiceDto data,
  }) = _ServiceDetailResponse;

  factory ServiceDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailResponseFromJson(json);
}
