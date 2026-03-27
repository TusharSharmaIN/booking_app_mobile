import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booking_app_mobile/infrastructure/auth/dtos/user_dto.dart';

part 'auth_response_dto.freezed.dart';
part 'auth_response_dto.g.dart';

@freezed
abstract class AuthResponseDto with _$AuthResponseDto {
  const factory AuthResponseDto({
    @JsonKey(name: 'token', defaultValue: '') required String token,
    @Default(UserDto.empty) @JsonKey(name: 'user') UserDto user,
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);

  static const empty = AuthResponseDto(token: '', user: UserDto.empty);
}

@freezed
abstract class AuthDataWrapper with _$AuthDataWrapper {
  const factory AuthDataWrapper({
    @JsonKey(name: 'success', defaultValue: true) required bool success,
    @Default(AuthResponseDto.empty) @JsonKey(name: 'data') AuthResponseDto data,
  }) = _AuthDataWrapper;

  factory AuthDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$AuthDataWrapperFromJson(json);
}
