// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'description') String get description;@JsonKey(name: 'price') double get price;@JsonKey(name: 'duration') int get duration;@JsonKey(name: 'isActive') bool get isActive;
/// Create a copy of ServiceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceDtoCopyWith<ServiceDto> get copyWith => _$ServiceDtoCopyWithImpl<ServiceDto>(this as ServiceDto, _$identity);

  /// Serializes this ServiceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,duration,isActive);

@override
String toString() {
  return 'ServiceDto(id: $id, name: $name, description: $description, price: $price, duration: $duration, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $ServiceDtoCopyWith<$Res>  {
  factory $ServiceDtoCopyWith(ServiceDto value, $Res Function(ServiceDto) _then) = _$ServiceDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'description') String description,@JsonKey(name: 'price') double price,@JsonKey(name: 'duration') int duration,@JsonKey(name: 'isActive') bool isActive
});




}
/// @nodoc
class _$ServiceDtoCopyWithImpl<$Res>
    implements $ServiceDtoCopyWith<$Res> {
  _$ServiceDtoCopyWithImpl(this._self, this._then);

  final ServiceDto _self;
  final $Res Function(ServiceDto) _then;

/// Create a copy of ServiceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? duration = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceDto].
extension ServiceDtoPatterns on ServiceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceDto value)  $default,){
final _that = this;
switch (_that) {
case _ServiceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceDto value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String description, @JsonKey(name: 'price')  double price, @JsonKey(name: 'duration')  int duration, @JsonKey(name: 'isActive')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceDto() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String description, @JsonKey(name: 'price')  double price, @JsonKey(name: 'duration')  int duration, @JsonKey(name: 'isActive')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _ServiceDto():
return $default(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String description, @JsonKey(name: 'price')  double price, @JsonKey(name: 'duration')  int duration, @JsonKey(name: 'isActive')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _ServiceDto() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.duration,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceDto extends ServiceDto {
  const _ServiceDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'description') required this.description, @JsonKey(name: 'price') required this.price, @JsonKey(name: 'duration') required this.duration, @JsonKey(name: 'isActive') required this.isActive}): super._();
  factory _ServiceDto.fromJson(Map<String, dynamic> json) => _$ServiceDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'price') final  double price;
@override@JsonKey(name: 'duration') final  int duration;
@override@JsonKey(name: 'isActive') final  bool isActive;

/// Create a copy of ServiceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceDtoCopyWith<_ServiceDto> get copyWith => __$ServiceDtoCopyWithImpl<_ServiceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,duration,isActive);

@override
String toString() {
  return 'ServiceDto(id: $id, name: $name, description: $description, price: $price, duration: $duration, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$ServiceDtoCopyWith<$Res> implements $ServiceDtoCopyWith<$Res> {
  factory _$ServiceDtoCopyWith(_ServiceDto value, $Res Function(_ServiceDto) _then) = __$ServiceDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'description') String description,@JsonKey(name: 'price') double price,@JsonKey(name: 'duration') int duration,@JsonKey(name: 'isActive') bool isActive
});




}
/// @nodoc
class __$ServiceDtoCopyWithImpl<$Res>
    implements _$ServiceDtoCopyWith<$Res> {
  __$ServiceDtoCopyWithImpl(this._self, this._then);

  final _ServiceDto _self;
  final $Res Function(_ServiceDto) _then;

/// Create a copy of ServiceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? duration = null,Object? isActive = null,}) {
  return _then(_ServiceDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ServicesListResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'data') List<ServiceDto> get data;
/// Create a copy of ServicesListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServicesListResponseCopyWith<ServicesListResponse> get copyWith => _$ServicesListResponseCopyWithImpl<ServicesListResponse>(this as ServicesListResponse, _$identity);

  /// Serializes this ServicesListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServicesListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ServicesListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ServicesListResponseCopyWith<$Res>  {
  factory $ServicesListResponseCopyWith(ServicesListResponse value, $Res Function(ServicesListResponse) _then) = _$ServicesListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'data') List<ServiceDto> data
});




}
/// @nodoc
class _$ServicesListResponseCopyWithImpl<$Res>
    implements $ServicesListResponseCopyWith<$Res> {
  _$ServicesListResponseCopyWithImpl(this._self, this._then);

  final ServicesListResponse _self;
  final $Res Function(ServicesListResponse) _then;

/// Create a copy of ServicesListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ServiceDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ServicesListResponse].
extension ServicesListResponsePatterns on ServicesListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServicesListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServicesListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServicesListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ServicesListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServicesListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ServicesListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  List<ServiceDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServicesListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  List<ServiceDto> data)  $default,) {final _that = this;
switch (_that) {
case _ServicesListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  List<ServiceDto> data)?  $default,) {final _that = this;
switch (_that) {
case _ServicesListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServicesListResponse implements ServicesListResponse {
  const _ServicesListResponse({@JsonKey(name: 'success') required this.success, @JsonKey(name: 'data') required final  List<ServiceDto> data}): _data = data;
  factory _ServicesListResponse.fromJson(Map<String, dynamic> json) => _$ServicesListResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
 final  List<ServiceDto> _data;
@override@JsonKey(name: 'data') List<ServiceDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ServicesListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServicesListResponseCopyWith<_ServicesListResponse> get copyWith => __$ServicesListResponseCopyWithImpl<_ServicesListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServicesListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServicesListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ServicesListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ServicesListResponseCopyWith<$Res> implements $ServicesListResponseCopyWith<$Res> {
  factory _$ServicesListResponseCopyWith(_ServicesListResponse value, $Res Function(_ServicesListResponse) _then) = __$ServicesListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'data') List<ServiceDto> data
});




}
/// @nodoc
class __$ServicesListResponseCopyWithImpl<$Res>
    implements _$ServicesListResponseCopyWith<$Res> {
  __$ServicesListResponseCopyWithImpl(this._self, this._then);

  final _ServicesListResponse _self;
  final $Res Function(_ServicesListResponse) _then;

/// Create a copy of ServicesListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ServicesListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ServiceDto>,
  ));
}


}


/// @nodoc
mixin _$ServiceDetailResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'data') ServiceDto get data;
/// Create a copy of ServiceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceDetailResponseCopyWith<ServiceDetailResponse> get copyWith => _$ServiceDetailResponseCopyWithImpl<ServiceDetailResponse>(this as ServiceDetailResponse, _$identity);

  /// Serializes this ServiceDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ServiceDetailResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ServiceDetailResponseCopyWith<$Res>  {
  factory $ServiceDetailResponseCopyWith(ServiceDetailResponse value, $Res Function(ServiceDetailResponse) _then) = _$ServiceDetailResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'data') ServiceDto data
});


$ServiceDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$ServiceDetailResponseCopyWithImpl<$Res>
    implements $ServiceDetailResponseCopyWith<$Res> {
  _$ServiceDetailResponseCopyWithImpl(this._self, this._then);

  final ServiceDetailResponse _self;
  final $Res Function(ServiceDetailResponse) _then;

/// Create a copy of ServiceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ServiceDto,
  ));
}
/// Create a copy of ServiceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDtoCopyWith<$Res> get data {
  
  return $ServiceDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServiceDetailResponse].
extension ServiceDetailResponsePatterns on ServiceDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  ServiceDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceDetailResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  ServiceDto data)  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'data')  ServiceDto data)?  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceDetailResponse implements ServiceDetailResponse {
  const _ServiceDetailResponse({@JsonKey(name: 'success') required this.success, @JsonKey(name: 'data') required this.data});
  factory _ServiceDetailResponse.fromJson(Map<String, dynamic> json) => _$ServiceDetailResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'data') final  ServiceDto data;

/// Create a copy of ServiceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceDetailResponseCopyWith<_ServiceDetailResponse> get copyWith => __$ServiceDetailResponseCopyWithImpl<_ServiceDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ServiceDetailResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ServiceDetailResponseCopyWith<$Res> implements $ServiceDetailResponseCopyWith<$Res> {
  factory _$ServiceDetailResponseCopyWith(_ServiceDetailResponse value, $Res Function(_ServiceDetailResponse) _then) = __$ServiceDetailResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'data') ServiceDto data
});


@override $ServiceDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$ServiceDetailResponseCopyWithImpl<$Res>
    implements _$ServiceDetailResponseCopyWith<$Res> {
  __$ServiceDetailResponseCopyWithImpl(this._self, this._then);

  final _ServiceDetailResponse _self;
  final $Res Function(_ServiceDetailResponse) _then;

/// Create a copy of ServiceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ServiceDetailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ServiceDto,
  ));
}

/// Create a copy of ServiceDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDtoCopyWith<$Res> get data {
  
  return $ServiceDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
