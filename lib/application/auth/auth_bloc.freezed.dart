// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OnAuthInputFieldChanged value)?  onAuthInputFieldChanged,TResult Function( _LoginRequested value)?  loginRequested,TResult Function( _RegisterRequested value)?  registerRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnAuthInputFieldChanged() when onAuthInputFieldChanged != null:
return onAuthInputFieldChanged(_that);case _LoginRequested() when loginRequested != null:
return loginRequested(_that);case _RegisterRequested() when registerRequested != null:
return registerRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OnAuthInputFieldChanged value)  onAuthInputFieldChanged,required TResult Function( _LoginRequested value)  loginRequested,required TResult Function( _RegisterRequested value)  registerRequested,}){
final _that = this;
switch (_that) {
case _OnAuthInputFieldChanged():
return onAuthInputFieldChanged(_that);case _LoginRequested():
return loginRequested(_that);case _RegisterRequested():
return registerRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OnAuthInputFieldChanged value)?  onAuthInputFieldChanged,TResult? Function( _LoginRequested value)?  loginRequested,TResult? Function( _RegisterRequested value)?  registerRequested,}){
final _that = this;
switch (_that) {
case _OnAuthInputFieldChanged() when onAuthInputFieldChanged != null:
return onAuthInputFieldChanged(_that);case _LoginRequested() when loginRequested != null:
return loginRequested(_that);case _RegisterRequested() when registerRequested != null:
return registerRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AuthFieldType fieldType,  String value)?  onAuthInputFieldChanged,TResult Function( String email,  String password)?  loginRequested,TResult Function( String name,  String email,  String password)?  registerRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnAuthInputFieldChanged() when onAuthInputFieldChanged != null:
return onAuthInputFieldChanged(_that.fieldType,_that.value);case _LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case _RegisterRequested() when registerRequested != null:
return registerRequested(_that.name,_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AuthFieldType fieldType,  String value)  onAuthInputFieldChanged,required TResult Function( String email,  String password)  loginRequested,required TResult Function( String name,  String email,  String password)  registerRequested,}) {final _that = this;
switch (_that) {
case _OnAuthInputFieldChanged():
return onAuthInputFieldChanged(_that.fieldType,_that.value);case _LoginRequested():
return loginRequested(_that.email,_that.password);case _RegisterRequested():
return registerRequested(_that.name,_that.email,_that.password);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AuthFieldType fieldType,  String value)?  onAuthInputFieldChanged,TResult? Function( String email,  String password)?  loginRequested,TResult? Function( String name,  String email,  String password)?  registerRequested,}) {final _that = this;
switch (_that) {
case _OnAuthInputFieldChanged() when onAuthInputFieldChanged != null:
return onAuthInputFieldChanged(_that.fieldType,_that.value);case _LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case _RegisterRequested() when registerRequested != null:
return registerRequested(_that.name,_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _OnAuthInputFieldChanged implements AuthEvent {
  const _OnAuthInputFieldChanged({required this.fieldType, required this.value});
  

 final  AuthFieldType fieldType;
 final  String value;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnAuthInputFieldChangedCopyWith<_OnAuthInputFieldChanged> get copyWith => __$OnAuthInputFieldChangedCopyWithImpl<_OnAuthInputFieldChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnAuthInputFieldChanged&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,fieldType,value);

@override
String toString() {
  return 'AuthEvent.onAuthInputFieldChanged(fieldType: $fieldType, value: $value)';
}


}

/// @nodoc
abstract mixin class _$OnAuthInputFieldChangedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$OnAuthInputFieldChangedCopyWith(_OnAuthInputFieldChanged value, $Res Function(_OnAuthInputFieldChanged) _then) = __$OnAuthInputFieldChangedCopyWithImpl;
@useResult
$Res call({
 AuthFieldType fieldType, String value
});




}
/// @nodoc
class __$OnAuthInputFieldChangedCopyWithImpl<$Res>
    implements _$OnAuthInputFieldChangedCopyWith<$Res> {
  __$OnAuthInputFieldChangedCopyWithImpl(this._self, this._then);

  final _OnAuthInputFieldChanged _self;
  final $Res Function(_OnAuthInputFieldChanged) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fieldType = null,Object? value = null,}) {
  return _then(_OnAuthInputFieldChanged(
fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as AuthFieldType,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoginRequested implements AuthEvent {
  const _LoginRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestedCopyWith<_LoginRequested> get copyWith => __$LoginRequestedCopyWithImpl<_LoginRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.loginRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginRequestedCopyWith(_LoginRequested value, $Res Function(_LoginRequested) _then) = __$LoginRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginRequestedCopyWithImpl<$Res>
    implements _$LoginRequestedCopyWith<$Res> {
  __$LoginRequestedCopyWithImpl(this._self, this._then);

  final _LoginRequested _self;
  final $Res Function(_LoginRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RegisterRequested implements AuthEvent {
  const _RegisterRequested({required this.name, required this.email, required this.password});
  

 final  String name;
 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterRequestedCopyWith<_RegisterRequested> get copyWith => __$RegisterRequestedCopyWithImpl<_RegisterRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterRequested&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password);

@override
String toString() {
  return 'AuthEvent.registerRequested(name: $name, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$RegisterRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisterRequestedCopyWith(_RegisterRequested value, $Res Function(_RegisterRequested) _then) = __$RegisterRequestedCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password
});




}
/// @nodoc
class __$RegisterRequestedCopyWithImpl<$Res>
    implements _$RegisterRequestedCopyWith<$Res> {
  __$RegisterRequestedCopyWithImpl(this._self, this._then);

  final _RegisterRequested _self;
  final $Res Function(_RegisterRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,}) {
  return _then(_RegisterRequested(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthState {

 bool get isLoading; StringValue get name; StringValue get email; StringValue get password; bool get isAuthenticated; UserEntity get user; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.user, user) || other.user == user)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,name,email,password,isAuthenticated,user,apiFailureOrSuccess);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, name: $name, email: $email, password: $password, isAuthenticated: $isAuthenticated, user: $user, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, StringValue name, StringValue email, StringValue password, bool isAuthenticated, UserEntity user, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? name = null,Object? email = null,Object? password = null,Object? isAuthenticated = null,Object? user = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as StringValue,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as StringValue,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as StringValue,isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  StringValue name,  StringValue email,  StringValue password,  bool isAuthenticated,  UserEntity user,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.name,_that.email,_that.password,_that.isAuthenticated,_that.user,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  StringValue name,  StringValue email,  StringValue password,  bool isAuthenticated,  UserEntity user,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.isLoading,_that.name,_that.email,_that.password,_that.isAuthenticated,_that.user,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  StringValue name,  StringValue email,  StringValue password,  bool isAuthenticated,  UserEntity user,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.name,_that.email,_that.password,_that.isAuthenticated,_that.user,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState extends AuthState {
  const _AuthState({required this.isLoading, required this.name, required this.email, required this.password, required this.isAuthenticated, required this.user, required this.apiFailureOrSuccess}): super._();
  

@override final  bool isLoading;
@override final  StringValue name;
@override final  StringValue email;
@override final  StringValue password;
@override final  bool isAuthenticated;
@override final  UserEntity user;
@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.user, user) || other.user == user)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,name,email,password,isAuthenticated,user,apiFailureOrSuccess);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, name: $name, email: $email, password: $password, isAuthenticated: $isAuthenticated, user: $user, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, StringValue name, StringValue email, StringValue password, bool isAuthenticated, UserEntity user, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


@override $UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? name = null,Object? email = null,Object? password = null,Object? isAuthenticated = null,Object? user = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_AuthState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as StringValue,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as StringValue,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as StringValue,isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
