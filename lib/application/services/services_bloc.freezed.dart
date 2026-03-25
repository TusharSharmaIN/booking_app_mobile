// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServicesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServicesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServicesEvent()';
}


}

/// @nodoc
class $ServicesEventCopyWith<$Res>  {
$ServicesEventCopyWith(ServicesEvent _, $Res Function(ServicesEvent) __);
}


/// Adds pattern-matching-related methods to [ServicesEvent].
extension ServicesEventPatterns on ServicesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchServices value)?  fetchServices,TResult Function( _FetchServiceDetail value)?  fetchServiceDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchServices() when fetchServices != null:
return fetchServices(_that);case _FetchServiceDetail() when fetchServiceDetail != null:
return fetchServiceDetail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchServices value)  fetchServices,required TResult Function( _FetchServiceDetail value)  fetchServiceDetail,}){
final _that = this;
switch (_that) {
case _FetchServices():
return fetchServices(_that);case _FetchServiceDetail():
return fetchServiceDetail(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchServices value)?  fetchServices,TResult? Function( _FetchServiceDetail value)?  fetchServiceDetail,}){
final _that = this;
switch (_that) {
case _FetchServices() when fetchServices != null:
return fetchServices(_that);case _FetchServiceDetail() when fetchServiceDetail != null:
return fetchServiceDetail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchServices,TResult Function( String id)?  fetchServiceDetail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchServices() when fetchServices != null:
return fetchServices();case _FetchServiceDetail() when fetchServiceDetail != null:
return fetchServiceDetail(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchServices,required TResult Function( String id)  fetchServiceDetail,}) {final _that = this;
switch (_that) {
case _FetchServices():
return fetchServices();case _FetchServiceDetail():
return fetchServiceDetail(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchServices,TResult? Function( String id)?  fetchServiceDetail,}) {final _that = this;
switch (_that) {
case _FetchServices() when fetchServices != null:
return fetchServices();case _FetchServiceDetail() when fetchServiceDetail != null:
return fetchServiceDetail(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _FetchServices implements ServicesEvent {
  const _FetchServices();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchServices);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServicesEvent.fetchServices()';
}


}




/// @nodoc


class _FetchServiceDetail implements ServicesEvent {
  const _FetchServiceDetail(this.id);
  

 final  String id;

/// Create a copy of ServicesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchServiceDetailCopyWith<_FetchServiceDetail> get copyWith => __$FetchServiceDetailCopyWithImpl<_FetchServiceDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchServiceDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ServicesEvent.fetchServiceDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchServiceDetailCopyWith<$Res> implements $ServicesEventCopyWith<$Res> {
  factory _$FetchServiceDetailCopyWith(_FetchServiceDetail value, $Res Function(_FetchServiceDetail) _then) = __$FetchServiceDetailCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$FetchServiceDetailCopyWithImpl<$Res>
    implements _$FetchServiceDetailCopyWith<$Res> {
  __$FetchServiceDetailCopyWithImpl(this._self, this._then);

  final _FetchServiceDetail _self;
  final $Res Function(_FetchServiceDetail) _then;

/// Create a copy of ServicesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_FetchServiceDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ServicesState {

 bool get isLoading; List<ServiceEntity> get services; ServiceEntity get serviceDetail; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServicesStateCopyWith<ServicesState> get copyWith => _$ServicesStateCopyWithImpl<ServicesState>(this as ServicesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServicesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.services, services)&&(identical(other.serviceDetail, serviceDetail) || other.serviceDetail == serviceDetail)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(services),serviceDetail,apiFailureOrSuccess);

@override
String toString() {
  return 'ServicesState(isLoading: $isLoading, services: $services, serviceDetail: $serviceDetail, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $ServicesStateCopyWith<$Res>  {
  factory $ServicesStateCopyWith(ServicesState value, $Res Function(ServicesState) _then) = _$ServicesStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<ServiceEntity> services, ServiceEntity serviceDetail, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


$ServiceEntityCopyWith<$Res> get serviceDetail;

}
/// @nodoc
class _$ServicesStateCopyWithImpl<$Res>
    implements $ServicesStateCopyWith<$Res> {
  _$ServicesStateCopyWithImpl(this._self, this._then);

  final ServicesState _self;
  final $Res Function(ServicesState) _then;

/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? services = null,Object? serviceDetail = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>,serviceDetail: null == serviceDetail ? _self.serviceDetail : serviceDetail // ignore: cast_nullable_to_non_nullable
as ServiceEntity,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}
/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceEntityCopyWith<$Res> get serviceDetail {
  
  return $ServiceEntityCopyWith<$Res>(_self.serviceDetail, (value) {
    return _then(_self.copyWith(serviceDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServicesState].
extension ServicesStatePatterns on ServicesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServicesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServicesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServicesState value)  $default,){
final _that = this;
switch (_that) {
case _ServicesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServicesState value)?  $default,){
final _that = this;
switch (_that) {
case _ServicesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<ServiceEntity> services,  ServiceEntity serviceDetail,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServicesState() when $default != null:
return $default(_that.isLoading,_that.services,_that.serviceDetail,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<ServiceEntity> services,  ServiceEntity serviceDetail,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _ServicesState():
return $default(_that.isLoading,_that.services,_that.serviceDetail,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<ServiceEntity> services,  ServiceEntity serviceDetail,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _ServicesState() when $default != null:
return $default(_that.isLoading,_that.services,_that.serviceDetail,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _ServicesState extends ServicesState {
  const _ServicesState({required this.isLoading, required final  List<ServiceEntity> services, required this.serviceDetail, required this.apiFailureOrSuccess}): _services = services,super._();
  

@override final  bool isLoading;
 final  List<ServiceEntity> _services;
@override List<ServiceEntity> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

@override final  ServiceEntity serviceDetail;
@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServicesStateCopyWith<_ServicesState> get copyWith => __$ServicesStateCopyWithImpl<_ServicesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServicesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._services, _services)&&(identical(other.serviceDetail, serviceDetail) || other.serviceDetail == serviceDetail)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_services),serviceDetail,apiFailureOrSuccess);

@override
String toString() {
  return 'ServicesState(isLoading: $isLoading, services: $services, serviceDetail: $serviceDetail, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$ServicesStateCopyWith<$Res> implements $ServicesStateCopyWith<$Res> {
  factory _$ServicesStateCopyWith(_ServicesState value, $Res Function(_ServicesState) _then) = __$ServicesStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<ServiceEntity> services, ServiceEntity serviceDetail, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


@override $ServiceEntityCopyWith<$Res> get serviceDetail;

}
/// @nodoc
class __$ServicesStateCopyWithImpl<$Res>
    implements _$ServicesStateCopyWith<$Res> {
  __$ServicesStateCopyWithImpl(this._self, this._then);

  final _ServicesState _self;
  final $Res Function(_ServicesState) _then;

/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? services = null,Object? serviceDetail = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_ServicesState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>,serviceDetail: null == serviceDetail ? _self.serviceDetail : serviceDetail // ignore: cast_nullable_to_non_nullable
as ServiceEntity,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

/// Create a copy of ServicesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceEntityCopyWith<$Res> get serviceDetail {
  
  return $ServiceEntityCopyWith<$Res>(_self.serviceDetail, (value) {
    return _then(_self.copyWith(serviceDetail: value));
  });
}
}

// dart format on
