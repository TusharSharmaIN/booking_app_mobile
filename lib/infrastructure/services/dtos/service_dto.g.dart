// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceDto _$ServiceDtoFromJson(Map<String, dynamic> json) => _ServiceDto(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  price: (json['price'] as num).toDouble(),
  duration: (json['duration'] as num).toInt(),
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$ServiceDtoToJson(_ServiceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'duration': instance.duration,
      'isActive': instance.isActive,
    };

_ServicesListResponse _$ServicesListResponseFromJson(
  Map<String, dynamic> json,
) => _ServicesListResponse(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => ServiceDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ServicesListResponseToJson(
  _ServicesListResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_ServiceDetailResponse _$ServiceDetailResponseFromJson(
  Map<String, dynamic> json,
) => _ServiceDetailResponse(
  success: json['success'] as bool,
  data: ServiceDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ServiceDetailResponseToJson(
  _ServiceDetailResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
