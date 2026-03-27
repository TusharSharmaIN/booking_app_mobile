import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booking_app_mobile/domain/auth/entities/user_entity.dart';
import 'package:booking_app_mobile/domain/core/value/value_objects.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'role', defaultValue: '') required String role,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  UserEntity toDomain() => UserEntity(
    id: StringValue(id),
    name: StringValue(name),
    email: StringValue(email),
    role: StringValue(role),
  );

  factory UserDto.fromDomain(UserEntity user) => UserDto(
    id: user.id.getOrCrash(),
    name: user.name.getOrCrash(),
    email: user.email.getOrCrash(),
    role: user.role.getOrCrash(),
  );

  static const empty = UserDto(id: '', name: '', email: '', role: '');
}
