// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingEvent()';
}


}

/// @nodoc
class $BookingEventCopyWith<$Res>  {
$BookingEventCopyWith(BookingEvent _, $Res Function(BookingEvent) __);
}


/// Adds pattern-matching-related methods to [BookingEvent].
extension BookingEventPatterns on BookingEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OnBookingInputFieldChanged value)?  onBookingInputFieldChanged,TResult Function( _CreateBooking value)?  createBooking,TResult Function( _FetchMyBookings value)?  fetchMyBookings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnBookingInputFieldChanged() when onBookingInputFieldChanged != null:
return onBookingInputFieldChanged(_that);case _CreateBooking() when createBooking != null:
return createBooking(_that);case _FetchMyBookings() when fetchMyBookings != null:
return fetchMyBookings(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OnBookingInputFieldChanged value)  onBookingInputFieldChanged,required TResult Function( _CreateBooking value)  createBooking,required TResult Function( _FetchMyBookings value)  fetchMyBookings,}){
final _that = this;
switch (_that) {
case _OnBookingInputFieldChanged():
return onBookingInputFieldChanged(_that);case _CreateBooking():
return createBooking(_that);case _FetchMyBookings():
return fetchMyBookings(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OnBookingInputFieldChanged value)?  onBookingInputFieldChanged,TResult? Function( _CreateBooking value)?  createBooking,TResult? Function( _FetchMyBookings value)?  fetchMyBookings,}){
final _that = this;
switch (_that) {
case _OnBookingInputFieldChanged() when onBookingInputFieldChanged != null:
return onBookingInputFieldChanged(_that);case _CreateBooking() when createBooking != null:
return createBooking(_that);case _FetchMyBookings() when fetchMyBookings != null:
return fetchMyBookings(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( BookingFieldType fieldType,  String value)?  onBookingInputFieldChanged,TResult Function( String serviceId,  DateTime scheduledAt,  String? notes)?  createBooking,TResult Function()?  fetchMyBookings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnBookingInputFieldChanged() when onBookingInputFieldChanged != null:
return onBookingInputFieldChanged(_that.fieldType,_that.value);case _CreateBooking() when createBooking != null:
return createBooking(_that.serviceId,_that.scheduledAt,_that.notes);case _FetchMyBookings() when fetchMyBookings != null:
return fetchMyBookings();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( BookingFieldType fieldType,  String value)  onBookingInputFieldChanged,required TResult Function( String serviceId,  DateTime scheduledAt,  String? notes)  createBooking,required TResult Function()  fetchMyBookings,}) {final _that = this;
switch (_that) {
case _OnBookingInputFieldChanged():
return onBookingInputFieldChanged(_that.fieldType,_that.value);case _CreateBooking():
return createBooking(_that.serviceId,_that.scheduledAt,_that.notes);case _FetchMyBookings():
return fetchMyBookings();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( BookingFieldType fieldType,  String value)?  onBookingInputFieldChanged,TResult? Function( String serviceId,  DateTime scheduledAt,  String? notes)?  createBooking,TResult? Function()?  fetchMyBookings,}) {final _that = this;
switch (_that) {
case _OnBookingInputFieldChanged() when onBookingInputFieldChanged != null:
return onBookingInputFieldChanged(_that.fieldType,_that.value);case _CreateBooking() when createBooking != null:
return createBooking(_that.serviceId,_that.scheduledAt,_that.notes);case _FetchMyBookings() when fetchMyBookings != null:
return fetchMyBookings();case _:
  return null;

}
}

}

/// @nodoc


class _OnBookingInputFieldChanged implements BookingEvent {
  const _OnBookingInputFieldChanged({required this.fieldType, required this.value});
  

 final  BookingFieldType fieldType;
 final  String value;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnBookingInputFieldChangedCopyWith<_OnBookingInputFieldChanged> get copyWith => __$OnBookingInputFieldChangedCopyWithImpl<_OnBookingInputFieldChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnBookingInputFieldChanged&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,fieldType,value);

@override
String toString() {
  return 'BookingEvent.onBookingInputFieldChanged(fieldType: $fieldType, value: $value)';
}


}

/// @nodoc
abstract mixin class _$OnBookingInputFieldChangedCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory _$OnBookingInputFieldChangedCopyWith(_OnBookingInputFieldChanged value, $Res Function(_OnBookingInputFieldChanged) _then) = __$OnBookingInputFieldChangedCopyWithImpl;
@useResult
$Res call({
 BookingFieldType fieldType, String value
});




}
/// @nodoc
class __$OnBookingInputFieldChangedCopyWithImpl<$Res>
    implements _$OnBookingInputFieldChangedCopyWith<$Res> {
  __$OnBookingInputFieldChangedCopyWithImpl(this._self, this._then);

  final _OnBookingInputFieldChanged _self;
  final $Res Function(_OnBookingInputFieldChanged) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fieldType = null,Object? value = null,}) {
  return _then(_OnBookingInputFieldChanged(
fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as BookingFieldType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreateBooking implements BookingEvent {
  const _CreateBooking({required this.serviceId, required this.scheduledAt, this.notes});
  

 final  String serviceId;
 final  DateTime scheduledAt;
 final  String? notes;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBookingCopyWith<_CreateBooking> get copyWith => __$CreateBookingCopyWithImpl<_CreateBooking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBooking&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,serviceId,scheduledAt,notes);

@override
String toString() {
  return 'BookingEvent.createBooking(serviceId: $serviceId, scheduledAt: $scheduledAt, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateBookingCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory _$CreateBookingCopyWith(_CreateBooking value, $Res Function(_CreateBooking) _then) = __$CreateBookingCopyWithImpl;
@useResult
$Res call({
 String serviceId, DateTime scheduledAt, String? notes
});




}
/// @nodoc
class __$CreateBookingCopyWithImpl<$Res>
    implements _$CreateBookingCopyWith<$Res> {
  __$CreateBookingCopyWithImpl(this._self, this._then);

  final _CreateBooking _self;
  final $Res Function(_CreateBooking) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? scheduledAt = null,Object? notes = freezed,}) {
  return _then(_CreateBooking(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _FetchMyBookings implements BookingEvent {
  const _FetchMyBookings();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMyBookings);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingEvent.fetchMyBookings()';
}


}




/// @nodoc
mixin _$BookingState {

 DateTimeValue get date; StringValue get notes; bool get isLoading; bool get createSuccess; List<BookingEntity> get bookings; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingStateCopyWith<BookingState> get copyWith => _$BookingStateCopyWithImpl<BookingState>(this as BookingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingState&&(identical(other.date, date) || other.date == date)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.createSuccess, createSuccess) || other.createSuccess == createSuccess)&&const DeepCollectionEquality().equals(other.bookings, bookings)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,date,notes,isLoading,createSuccess,const DeepCollectionEquality().hash(bookings),apiFailureOrSuccess);

@override
String toString() {
  return 'BookingState(date: $date, notes: $notes, isLoading: $isLoading, createSuccess: $createSuccess, bookings: $bookings, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $BookingStateCopyWith<$Res>  {
  factory $BookingStateCopyWith(BookingState value, $Res Function(BookingState) _then) = _$BookingStateCopyWithImpl;
@useResult
$Res call({
 DateTimeValue date, StringValue notes, bool isLoading, bool createSuccess, List<BookingEntity> bookings, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});




}
/// @nodoc
class _$BookingStateCopyWithImpl<$Res>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._self, this._then);

  final BookingState _self;
  final $Res Function(BookingState) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? notes = null,Object? isLoading = null,Object? createSuccess = null,Object? bookings = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTimeValue,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as StringValue,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,createSuccess: null == createSuccess ? _self.createSuccess : createSuccess // ignore: cast_nullable_to_non_nullable
as bool,bookings: null == bookings ? _self.bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<BookingEntity>,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingState].
extension BookingStatePatterns on BookingState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingState value)  $default,){
final _that = this;
switch (_that) {
case _BookingState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingState value)?  $default,){
final _that = this;
switch (_that) {
case _BookingState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTimeValue date,  StringValue notes,  bool isLoading,  bool createSuccess,  List<BookingEntity> bookings,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingState() when $default != null:
return $default(_that.date,_that.notes,_that.isLoading,_that.createSuccess,_that.bookings,_that.apiFailureOrSuccess);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTimeValue date,  StringValue notes,  bool isLoading,  bool createSuccess,  List<BookingEntity> bookings,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _BookingState():
return $default(_that.date,_that.notes,_that.isLoading,_that.createSuccess,_that.bookings,_that.apiFailureOrSuccess);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTimeValue date,  StringValue notes,  bool isLoading,  bool createSuccess,  List<BookingEntity> bookings,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _BookingState() when $default != null:
return $default(_that.date,_that.notes,_that.isLoading,_that.createSuccess,_that.bookings,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _BookingState extends BookingState {
  const _BookingState({required this.date, required this.notes, required this.isLoading, required this.createSuccess, required final  List<BookingEntity> bookings, required this.apiFailureOrSuccess}): _bookings = bookings,super._();
  

@override final  DateTimeValue date;
@override final  StringValue notes;
@override final  bool isLoading;
@override final  bool createSuccess;
 final  List<BookingEntity> _bookings;
@override List<BookingEntity> get bookings {
  if (_bookings is EqualUnmodifiableListView) return _bookings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookings);
}

@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingStateCopyWith<_BookingState> get copyWith => __$BookingStateCopyWithImpl<_BookingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingState&&(identical(other.date, date) || other.date == date)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.createSuccess, createSuccess) || other.createSuccess == createSuccess)&&const DeepCollectionEquality().equals(other._bookings, _bookings)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,date,notes,isLoading,createSuccess,const DeepCollectionEquality().hash(_bookings),apiFailureOrSuccess);

@override
String toString() {
  return 'BookingState(date: $date, notes: $notes, isLoading: $isLoading, createSuccess: $createSuccess, bookings: $bookings, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$BookingStateCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$BookingStateCopyWith(_BookingState value, $Res Function(_BookingState) _then) = __$BookingStateCopyWithImpl;
@override @useResult
$Res call({
 DateTimeValue date, StringValue notes, bool isLoading, bool createSuccess, List<BookingEntity> bookings, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});




}
/// @nodoc
class __$BookingStateCopyWithImpl<$Res>
    implements _$BookingStateCopyWith<$Res> {
  __$BookingStateCopyWithImpl(this._self, this._then);

  final _BookingState _self;
  final $Res Function(_BookingState) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? notes = null,Object? isLoading = null,Object? createSuccess = null,Object? bookings = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_BookingState(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTimeValue,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as StringValue,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,createSuccess: null == createSuccess ? _self.createSuccess : createSuccess // ignore: cast_nullable_to_non_nullable
as bool,bookings: null == bookings ? _self._bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<BookingEntity>,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}


}

// dart format on
