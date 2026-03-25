// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'userId') String get userId;@JsonKey(name: 'serviceId') String get serviceId;@JsonKey(name: 'scheduledAt') DateTime get scheduledAt;@JsonKey(name: 'status') String get status;@JsonKey(name: 'notes') String get notes;@JsonKey(name: 'service') ServiceDto get service;@JsonKey(name: 'user') UserDto get user;
/// Create a copy of BookingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingDtoCopyWith<BookingDto> get copyWith => _$BookingDtoCopyWithImpl<BookingDto>(this as BookingDto, _$identity);

  /// Serializes this BookingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.service, service) || other.service == service)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,serviceId,scheduledAt,status,notes,service,user);

@override
String toString() {
  return 'BookingDto(id: $id, userId: $userId, serviceId: $serviceId, scheduledAt: $scheduledAt, status: $status, notes: $notes, service: $service, user: $user)';
}


}

/// @nodoc
abstract mixin class $BookingDtoCopyWith<$Res>  {
  factory $BookingDtoCopyWith(BookingDto value, $Res Function(BookingDto) _then) = _$BookingDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'serviceId') String serviceId,@JsonKey(name: 'scheduledAt') DateTime scheduledAt,@JsonKey(name: 'status') String status,@JsonKey(name: 'notes') String notes,@JsonKey(name: 'service') ServiceDto service,@JsonKey(name: 'user') UserDto user
});


$ServiceDtoCopyWith<$Res> get service;$UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$BookingDtoCopyWithImpl<$Res>
    implements $BookingDtoCopyWith<$Res> {
  _$BookingDtoCopyWithImpl(this._self, this._then);

  final BookingDto _self;
  final $Res Function(BookingDto) _then;

/// Create a copy of BookingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? serviceId = null,Object? scheduledAt = null,Object? status = null,Object? notes = null,Object? service = null,Object? user = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceDto,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of BookingDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDtoCopyWith<$Res> get service {
  
  return $ServiceDtoCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of BookingDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingDto].
extension BookingDtoPatterns on BookingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingDto value)  $default,){
final _that = this;
switch (_that) {
case _BookingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingDto value)?  $default,){
final _that = this;
switch (_that) {
case _BookingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'serviceId')  String serviceId, @JsonKey(name: 'scheduledAt')  DateTime scheduledAt, @JsonKey(name: 'status')  String status, @JsonKey(name: 'notes')  String notes, @JsonKey(name: 'service')  ServiceDto service, @JsonKey(name: 'user')  UserDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingDto() when $default != null:
return $default(_that.id,_that.userId,_that.serviceId,_that.scheduledAt,_that.status,_that.notes,_that.service,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'serviceId')  String serviceId, @JsonKey(name: 'scheduledAt')  DateTime scheduledAt, @JsonKey(name: 'status')  String status, @JsonKey(name: 'notes')  String notes, @JsonKey(name: 'service')  ServiceDto service, @JsonKey(name: 'user')  UserDto user)  $default,) {final _that = this;
switch (_that) {
case _BookingDto():
return $default(_that.id,_that.userId,_that.serviceId,_that.scheduledAt,_that.status,_that.notes,_that.service,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'serviceId')  String serviceId, @JsonKey(name: 'scheduledAt')  DateTime scheduledAt, @JsonKey(name: 'status')  String status, @JsonKey(name: 'notes')  String notes, @JsonKey(name: 'service')  ServiceDto service, @JsonKey(name: 'user')  UserDto user)?  $default,) {final _that = this;
switch (_that) {
case _BookingDto() when $default != null:
return $default(_that.id,_that.userId,_that.serviceId,_that.scheduledAt,_that.status,_that.notes,_that.service,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingDto extends BookingDto {
  const _BookingDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'serviceId') required this.serviceId, @JsonKey(name: 'scheduledAt') required this.scheduledAt, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'notes') required this.notes, @JsonKey(name: 'service') required this.service, @JsonKey(name: 'user') required this.user}): super._();
  factory _BookingDto.fromJson(Map<String, dynamic> json) => _$BookingDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'userId') final  String userId;
@override@JsonKey(name: 'serviceId') final  String serviceId;
@override@JsonKey(name: 'scheduledAt') final  DateTime scheduledAt;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'notes') final  String notes;
@override@JsonKey(name: 'service') final  ServiceDto service;
@override@JsonKey(name: 'user') final  UserDto user;

/// Create a copy of BookingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingDtoCopyWith<_BookingDto> get copyWith => __$BookingDtoCopyWithImpl<_BookingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.service, service) || other.service == service)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,serviceId,scheduledAt,status,notes,service,user);

@override
String toString() {
  return 'BookingDto(id: $id, userId: $userId, serviceId: $serviceId, scheduledAt: $scheduledAt, status: $status, notes: $notes, service: $service, user: $user)';
}


}

/// @nodoc
abstract mixin class _$BookingDtoCopyWith<$Res> implements $BookingDtoCopyWith<$Res> {
  factory _$BookingDtoCopyWith(_BookingDto value, $Res Function(_BookingDto) _then) = __$BookingDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'serviceId') String serviceId,@JsonKey(name: 'scheduledAt') DateTime scheduledAt,@JsonKey(name: 'status') String status,@JsonKey(name: 'notes') String notes,@JsonKey(name: 'service') ServiceDto service,@JsonKey(name: 'user') UserDto user
});


@override $ServiceDtoCopyWith<$Res> get service;@override $UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$BookingDtoCopyWithImpl<$Res>
    implements _$BookingDtoCopyWith<$Res> {
  __$BookingDtoCopyWithImpl(this._self, this._then);

  final _BookingDto _self;
  final $Res Function(_BookingDto) _then;

/// Create a copy of BookingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? serviceId = null,Object? scheduledAt = null,Object? status = null,Object? notes = null,Object? service = null,Object? user = null,}) {
  return _then(_BookingDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceDto,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of BookingDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDtoCopyWith<$Res> get service {
  
  return $ServiceDtoCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of BookingDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$SingleBookingResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'data') BookingDto get data;
/// Create a copy of SingleBookingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleBookingResponseCopyWith<SingleBookingResponse> get copyWith => _$SingleBookingResponseCopyWithImpl<SingleBookingResponse>(this as SingleBookingResponse, _$identity);

  /// Serializes this SingleBookingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleBookingResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SingleBookingResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $SingleBookingResponseCopyWith<$Res>  {
  factory $SingleBookingResponseCopyWith(SingleBookingResponse value, $Res Function(SingleBookingResponse) _then) = _$SingleBookingResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'data') BookingDto data
});


$BookingDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$SingleBookingResponseCopyWithImpl<$Res>
    implements $SingleBookingResponseCopyWith<$Res> {
  _$SingleBookingResponseCopyWithImpl(this._self, this._then);

  final SingleBookingResponse _self;
  final $Res Function(SingleBookingResponse) _then;

/// Create a copy of SingleBookingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BookingDto,
  ));
}
/// Create a copy of SingleBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingDtoCopyWith<$Res> get data {
  
  return $BookingDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SingleBookingResponse].
extension SingleBookingResponsePatterns on SingleBookingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SingleBookingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SingleBookingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SingleBookingResponse value)  $default,){
final _that = this;
switch (_that) {
case _SingleBookingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SingleBookingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SingleBookingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  BookingDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SingleBookingResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  BookingDto data)  $default,) {final _that = this;
switch (_that) {
case _SingleBookingResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  BookingDto data)?  $default,) {final _that = this;
switch (_that) {
case _SingleBookingResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SingleBookingResponse implements SingleBookingResponse {
  const _SingleBookingResponse({@JsonKey(name: 'success') required this.success, @JsonKey(name: 'data') required this.data});
  factory _SingleBookingResponse.fromJson(Map<String, dynamic> json) => _$SingleBookingResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'data') final  BookingDto data;

/// Create a copy of SingleBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SingleBookingResponseCopyWith<_SingleBookingResponse> get copyWith => __$SingleBookingResponseCopyWithImpl<_SingleBookingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SingleBookingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SingleBookingResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SingleBookingResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SingleBookingResponseCopyWith<$Res> implements $SingleBookingResponseCopyWith<$Res> {
  factory _$SingleBookingResponseCopyWith(_SingleBookingResponse value, $Res Function(_SingleBookingResponse) _then) = __$SingleBookingResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'data') BookingDto data
});


@override $BookingDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$SingleBookingResponseCopyWithImpl<$Res>
    implements _$SingleBookingResponseCopyWith<$Res> {
  __$SingleBookingResponseCopyWithImpl(this._self, this._then);

  final _SingleBookingResponse _self;
  final $Res Function(_SingleBookingResponse) _then;

/// Create a copy of SingleBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_SingleBookingResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BookingDto,
  ));
}

/// Create a copy of SingleBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingDtoCopyWith<$Res> get data {
  
  return $BookingDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ListBookingResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'data') List<BookingDto> get data;
/// Create a copy of ListBookingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListBookingResponseCopyWith<ListBookingResponse> get copyWith => _$ListBookingResponseCopyWithImpl<ListBookingResponse>(this as ListBookingResponse, _$identity);

  /// Serializes this ListBookingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListBookingResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ListBookingResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ListBookingResponseCopyWith<$Res>  {
  factory $ListBookingResponseCopyWith(ListBookingResponse value, $Res Function(ListBookingResponse) _then) = _$ListBookingResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'data') List<BookingDto> data
});




}
/// @nodoc
class _$ListBookingResponseCopyWithImpl<$Res>
    implements $ListBookingResponseCopyWith<$Res> {
  _$ListBookingResponseCopyWithImpl(this._self, this._then);

  final ListBookingResponse _self;
  final $Res Function(ListBookingResponse) _then;

/// Create a copy of ListBookingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BookingDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ListBookingResponse].
extension ListBookingResponsePatterns on ListBookingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListBookingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListBookingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListBookingResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListBookingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListBookingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListBookingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  List<BookingDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListBookingResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  List<BookingDto> data)  $default,) {final _that = this;
switch (_that) {
case _ListBookingResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  List<BookingDto> data)?  $default,) {final _that = this;
switch (_that) {
case _ListBookingResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListBookingResponse implements ListBookingResponse {
  const _ListBookingResponse({@JsonKey(name: 'success') required this.success, @JsonKey(name: 'data') required final  List<BookingDto> data}): _data = data;
  factory _ListBookingResponse.fromJson(Map<String, dynamic> json) => _$ListBookingResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
 final  List<BookingDto> _data;
@override@JsonKey(name: 'data') List<BookingDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ListBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListBookingResponseCopyWith<_ListBookingResponse> get copyWith => __$ListBookingResponseCopyWithImpl<_ListBookingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListBookingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListBookingResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ListBookingResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ListBookingResponseCopyWith<$Res> implements $ListBookingResponseCopyWith<$Res> {
  factory _$ListBookingResponseCopyWith(_ListBookingResponse value, $Res Function(_ListBookingResponse) _then) = __$ListBookingResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'data') List<BookingDto> data
});




}
/// @nodoc
class __$ListBookingResponseCopyWithImpl<$Res>
    implements _$ListBookingResponseCopyWith<$Res> {
  __$ListBookingResponseCopyWithImpl(this._self, this._then);

  final _ListBookingResponse _self;
  final $Res Function(_ListBookingResponse) _then;

/// Create a copy of ListBookingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ListBookingResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BookingDto>,
  ));
}


}

// dart format on
