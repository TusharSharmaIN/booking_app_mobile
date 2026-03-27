// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingDto _$BookingDtoFromJson(Map<String, dynamic> json) => _BookingDto(
  id: json['id'] as String? ?? '',
  userId: json['userId'] as String? ?? '',
  serviceId: json['serviceId'] as String? ?? '',
  scheduledAt: json['scheduledAt'] as String? ?? '',
  status: json['status'] as String? ?? '',
  notes: json['notes'] as String? ?? '',
  service: json['service'] == null
      ? ServiceDto.empty
      : ServiceDto.fromJson(json['service'] as Map<String, dynamic>),
  user: json['user'] == null
      ? UserDto.empty
      : UserDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookingDtoToJson(_BookingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'serviceId': instance.serviceId,
      'scheduledAt': instance.scheduledAt,
      'status': instance.status,
      'notes': instance.notes,
      'service': instance.service,
      'user': instance.user,
    };

_SingleBookingResponse _$SingleBookingResponseFromJson(
  Map<String, dynamic> json,
) => _SingleBookingResponse(
  success: json['success'] as bool,
  data: BookingDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SingleBookingResponseToJson(
  _SingleBookingResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_ListBookingResponse _$ListBookingResponseFromJson(Map<String, dynamic> json) =>
    _ListBookingResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => BookingDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListBookingResponseToJson(
  _ListBookingResponse instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
