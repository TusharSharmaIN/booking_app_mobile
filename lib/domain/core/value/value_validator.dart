import 'package:dartz/dartz.dart';
import 'package:booking_app_mobile/domain/core/error/value_failure.dart';
import 'package:booking_app_mobile/domain/core/value/value_transformer.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isNotEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r'^(?![\.])([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$';

  return RegExp(emailRegex).hasMatch(input)
      ? right(input)
      : left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> atLeastOneUpperCharacter(String input) {
  return isAtLeastOneUpperCharacter(input: input)
      ? right(input)
      : left(ValueFailure.mustOneUpperCaseCharacter(failedValue: input));
}

Either<ValueFailure<String>, String> atLeastOneLowerCharacter(String input) {
  return isAtLeastOneLowerCharacter(input: input)
      ? right(input)
      : left(ValueFailure.mustOneLowerCaseCharacter(failedValue: input));
}

Either<ValueFailure<String>, String> atLeastOneNumericCharacter(String input) {
  return isAtLeastOneNumericCharacter(input: input)
      ? right(input)
      : left(ValueFailure.mustOneNumericCharacter(failedValue: input));
}

Either<ValueFailure<String>, String> atLeastOneSpecialCharacter(String input) {
  return isAtLeastOneSpecialCharacter(input: input)
      ? right(input)
      : left(ValueFailure.mustOneSpecialCharacter(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringLength(
  String input, {
  required int minLength,
}) {
  if (input.length < minLength) {
    return left(ValueFailure.subceedLength(failedValue: input, min: minLength));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,20}$';

  return RegExp(passwordRegex).hasMatch(input)
      ? right(input)
      : left(ValueFailure.passwordNotMatchRequirements(failedValue: input));
}

bool isMinCharacter({required String input, required int minLength}) =>
    input.length >= minLength;

Either<ValueFailure<String>, String> validateNewAndConfirmPassword(
  String confirmPassword,
  String newPassword,
) {
  return confirmPassword == newPassword
      ? right(confirmPassword)
      : left(ValueFailure.mustMatchNewPassword(failedValue: confirmPassword));
}

Either<ValueFailure<String>, String> validateStringIsEmpty(String input) {
  return input.isEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateTimestampString(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }

  final raw = input.split('.').first;
  final parsed = int.tryParse(raw);
  if (parsed == null) {
    return left(ValueFailure.invalidIntegerValue(failedValue: input));
  }

  try {
    final iso = DateTime.fromMillisecondsSinceEpoch(parsed).toIso8601String();
    return right(iso);
  } catch (_) {
    return left(ValueFailure.invalidIntegerValue(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUnixTimestampString(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }

  final parsed = int.tryParse(input);
  if (parsed == null) {
    return left(ValueFailure.invalidIntegerValue(failedValue: input));
  }

  try {
    final iso = DateTime.fromMillisecondsSinceEpoch(
      parsed * 1000,
    ).toIso8601String();
    return right(iso);
  } catch (_) {
    return left(ValueFailure.invalidIntegerValue(failedValue: input));
  }
}
