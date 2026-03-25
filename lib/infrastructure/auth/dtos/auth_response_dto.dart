import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booking_app_mobile/infrastructure/auth/dtos/user_dto.dart';

part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

@freezed
abstract class AuthResponseDto with _$AuthResponseDto {
  const factory AuthResponseDto({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'user') required UserDto user,
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);
}

@freezed
abstract class AuthDataWrapper with _$AuthDataWrapper {
  const factory AuthDataWrapper({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'data') required AuthResponseDto data,
  }) = _AuthDataWrapper;

  factory AuthDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$AuthDataWrapperFromJson(json);
}
