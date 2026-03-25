import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:booking_app_mobile/domain/core/error/value_error.dart';
import 'package:booking_app_mobile/domain/core/error/value_failure.dart';
import 'package:booking_app_mobile/domain/core/value/value_validator.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrDefaultValue(T defaultValue) {
    return value.fold((f) => defaultValue, id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class StringValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringValue(String input) =>
      StringValue._(validateStringNotEmpty(input));

  bool get isNotEmpty => value.getOrElse(() => '').isNotEmpty;

  const StringValue._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password.login(String input) {
    return Password._(validateStringNotEmpty(input));
  }

  factory Password.reset(String input) {
    return Password._(validateStringNotEmpty(input).flatMap(validatePassword));
  }

  factory Password(String newPassword) {
    return Password._(
      validateStringNotEmpty(newPassword)
          .flatMap(atLeastOneLowerCharacter)
          .flatMap(atLeastOneUpperCharacter)
          .flatMap(atLeastOneNumericCharacter)
          .flatMap(atLeastOneSpecialCharacter)
          .flatMap((input) => validateStringLength(input, minLength: 8)),
    );
  }

  factory Password.confirm(String confirmPassword, String newPassword) {
    return Password._(
      validateStringNotEmpty(
        confirmPassword,
      ).flatMap((input) => validateNewAndConfirmPassword(input, newPassword)),
    );
  }

  const Password._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateStringNotEmpty(input).flatMap(validateEmailAddress),
    );
  }

  factory EmailAddress.optional(String input) {
    return EmailAddress._(
      (validateStringIsEmpty(
        input,
      ).fold((l) => validateEmailAddress(input), (r) => Right(r))),
    );
  }

  const EmailAddress._(this.value);

  bool get isNotEmpty => value.getOrElse(() => '').isNotEmpty;
}

/// A ValueObject wrapper around an ISO date‑time string.
class DateTimeValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  /// Pass in an ISO‑8601 string, e.g. “2025-01-01T00:00:00Z”.
  factory DateTimeValue(String input) {
    return DateTimeValue._(validateStringNotEmpty(input));
  }

  /// Create a DateTimeValue from a numeric timestamp string (milliseconds
  /// since epoch).
  factory DateTimeValue.fromTimestamp(String input) {
    return DateTimeValue._(validateTimestampString(input));
  }

  factory DateTimeValue.fromUnixTimestamp(String input) {
    return DateTimeValue._(validateUnixTimestampString(input));
  }

  const DateTimeValue._(this.value);

  /// Raw parsed DateTime (in local time).
  DateTime get dateTime => DateTime.parse(
    value.getOrElse(() => DateTime.now().toIso8601String()),
  ).toLocal();

  /// Formats date as "dd/mm/yyyy at hh:mm"
  String getFormattedDate() {
    try {
      final dt = dateTime;
      return '${dt.day}/${dt.month}/${dt.year} at ${dt.hour}:${dt.minute.toString().padLeft(2, '0')}';
    } catch (_) {
      return '';
    }
  }

  bool get isNotEmpty => value.getOrElse(() => '').isNotEmpty;
}

class IntValue extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory IntValue(int input) => IntValue._(right(input));
  const IntValue._(this.value);
}

class DoubleValue extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory DoubleValue(double input) => DoubleValue._(right(input));
  const DoubleValue._(this.value);
}

class BoolValue extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  factory BoolValue(bool input) => BoolValue._(right(input));
  const BoolValue._(this.value);
}
