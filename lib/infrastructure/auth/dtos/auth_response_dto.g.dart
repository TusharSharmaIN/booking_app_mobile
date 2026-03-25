// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    _AuthResponseDto(
      token: json['token'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseDtoToJson(_AuthResponseDto instance) =>
    <String, dynamic>{'token': instance.token, 'user': instance.user};

_AuthDataWrapper _$AuthDataWrapperFromJson(Map<String, dynamic> json) =>
    _AuthDataWrapper(
      success: json['success'] as bool,
      data: AuthResponseDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthDataWrapperToJson(_AuthDataWrapper instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};
