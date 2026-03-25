import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booking_app_mobile/domain/core/value/value_objects.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    required StringValue id,
    required StringValue name,
    required StringValue email,
    required StringValue role,
  }) = _UserEntity;

  factory UserEntity.empty() => UserEntity(
    id: StringValue(''),
    name: StringValue(''),
    email: StringValue(''),
    role: StringValue(''),
  );
}
