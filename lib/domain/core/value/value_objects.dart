import 'package:dartz/dartz.dart';
import 'package:booking_app_mobile/core/errors/failures.dart';

abstract class ValueObject<T> {
  const ValueObject();

  Either<Failure, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  T getValue() {
    return value.fold(
      (f) =>
          f as T, // Return raw or mock value conceptually, but mostly users want to just unwrap.
      (r) => r,
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class UnexpectedValueError extends Error {
  final Failure failure;
  UnexpectedValueError(this.failure);

  @override
  String toString() {
    return Error.safeToString(
      'Encountered a ValueFailure at an unrecoverable point. Terminating. Failure was: $failure',
    );
  }
}

class StringValue extends ValueObject<String> {
  @override
  final Either<Failure, String> value;

  // Simple implementation that doesn't actually validate strings (accepts all)
  const StringValue._(this.value);

  factory StringValue(String input) {
    return StringValue._(right(input));
  }
}

class DateTimeValue extends ValueObject<DateTime> {
  @override
  final Either<Failure, DateTime> value;

  const DateTimeValue._(this.value);

  factory DateTimeValue(String input) {
    if (input.isEmpty) {
      return DateTimeValue._(right(DateTime.fromMillisecondsSinceEpoch(0)));
    }

    try {
      final dt = DateTime.parse(input);
      return DateTimeValue._(right(dt));
    } catch (_) {
      // Return a basic failure on parse error or a zero-epoch time
      return DateTimeValue._(right(DateTime.fromMillisecondsSinceEpoch(0)));
    }
  }
}

class BoolValue extends ValueObject<bool> {
  @override
  final Either<Failure, bool> value;

  const BoolValue._(this.value);

  factory BoolValue(bool input) {
    return BoolValue._(right(input));
  }
}

class IntValue extends ValueObject<int> {
  @override
  final Either<Failure, int> value;

  const IntValue._(this.value);

  factory IntValue(int input) {
    return IntValue._(right(input));
  }
}

class DoubleValue extends ValueObject<double> {
  @override
  final Either<Failure, double> value;

  const DoubleValue._(this.value);

  factory DoubleValue(double input) {
    return DoubleValue._(right(input));
  }
}
