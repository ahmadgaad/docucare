// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates()';
}


}

/// @nodoc
class $HomeStatesCopyWith<$Res>  {
$HomeStatesCopyWith(HomeStates _, $Res Function(HomeStates) __);
}


/// Adds pattern-matching-related methods to [HomeStates].
extension HomeStatesPatterns on HomeStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SpecializationLoading value)?  specializationLoading,TResult Function( SpecializationSuccess value)?  specializationSuccess,TResult Function( SpecializationError value)?  specializationError,TResult Function( DoctorsSuccess value)?  doctorsSuccess,TResult Function( DoctorsError value)?  doctorsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case SpecializationError() when specializationError != null:
return specializationError(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsError() when doctorsError != null:
return doctorsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SpecializationLoading value)  specializationLoading,required TResult Function( SpecializationSuccess value)  specializationSuccess,required TResult Function( SpecializationError value)  specializationError,required TResult Function( DoctorsSuccess value)  doctorsSuccess,required TResult Function( DoctorsError value)  doctorsError,}){
final _that = this;
switch (_that) {
case SpecializationLoading():
return specializationLoading(_that);case SpecializationSuccess():
return specializationSuccess(_that);case SpecializationError():
return specializationError(_that);case DoctorsSuccess():
return doctorsSuccess(_that);case DoctorsError():
return doctorsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SpecializationLoading value)?  specializationLoading,TResult? Function( SpecializationSuccess value)?  specializationSuccess,TResult? Function( SpecializationError value)?  specializationError,TResult? Function( DoctorsSuccess value)?  doctorsSuccess,TResult? Function( DoctorsError value)?  doctorsError,}){
final _that = this;
switch (_that) {
case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case SpecializationError() when specializationError != null:
return specializationError(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsError() when doctorsError != null:
return doctorsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  specializationLoading,TResult Function( SpecializationsResponseModel data)?  specializationSuccess,TResult Function( String error)?  specializationError,TResult Function( List<DoctorModel> doctors)?  doctorsSuccess,TResult Function( String error)?  doctorsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.data);case SpecializationError() when specializationError != null:
return specializationError(_that.error);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.doctors);case DoctorsError() when doctorsError != null:
return doctorsError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  specializationLoading,required TResult Function( SpecializationsResponseModel data)  specializationSuccess,required TResult Function( String error)  specializationError,required TResult Function( List<DoctorModel> doctors)  doctorsSuccess,required TResult Function( String error)  doctorsError,}) {final _that = this;
switch (_that) {
case SpecializationLoading():
return specializationLoading();case SpecializationSuccess():
return specializationSuccess(_that.data);case SpecializationError():
return specializationError(_that.error);case DoctorsSuccess():
return doctorsSuccess(_that.doctors);case DoctorsError():
return doctorsError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  specializationLoading,TResult? Function( SpecializationsResponseModel data)?  specializationSuccess,TResult? Function( String error)?  specializationError,TResult? Function( List<DoctorModel> doctors)?  doctorsSuccess,TResult? Function( String error)?  doctorsError,}) {final _that = this;
switch (_that) {
case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.data);case SpecializationError() when specializationError != null:
return specializationError(_that.error);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.doctors);case DoctorsError() when doctorsError != null:
return doctorsError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SpecializationLoading implements HomeStates {
  const SpecializationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates.specializationLoading()';
}


}




/// @nodoc


class SpecializationSuccess implements HomeStates {
  const SpecializationSuccess(this.data);
  

 final  SpecializationsResponseModel data;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationSuccessCopyWith<SpecializationSuccess> get copyWith => _$SpecializationSuccessCopyWithImpl<SpecializationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HomeStates.specializationSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SpecializationSuccessCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $SpecializationSuccessCopyWith(SpecializationSuccess value, $Res Function(SpecializationSuccess) _then) = _$SpecializationSuccessCopyWithImpl;
@useResult
$Res call({
 SpecializationsResponseModel data
});




}
/// @nodoc
class _$SpecializationSuccessCopyWithImpl<$Res>
    implements $SpecializationSuccessCopyWith<$Res> {
  _$SpecializationSuccessCopyWithImpl(this._self, this._then);

  final SpecializationSuccess _self;
  final $Res Function(SpecializationSuccess) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(SpecializationSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SpecializationsResponseModel,
  ));
}


}

/// @nodoc


class SpecializationError implements HomeStates {
  const SpecializationError({required this.error});
  

 final  String error;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationErrorCopyWith<SpecializationError> get copyWith => _$SpecializationErrorCopyWithImpl<SpecializationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeStates.specializationError(error: $error)';
}


}

/// @nodoc
abstract mixin class $SpecializationErrorCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $SpecializationErrorCopyWith(SpecializationError value, $Res Function(SpecializationError) _then) = _$SpecializationErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SpecializationErrorCopyWithImpl<$Res>
    implements $SpecializationErrorCopyWith<$Res> {
  _$SpecializationErrorCopyWithImpl(this._self, this._then);

  final SpecializationError _self;
  final $Res Function(SpecializationError) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SpecializationError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DoctorsSuccess implements HomeStates {
  const DoctorsSuccess(final  List<DoctorModel> doctors): _doctors = doctors;
  

 final  List<DoctorModel> _doctors;
 List<DoctorModel> get doctors {
  if (_doctors is EqualUnmodifiableListView) return _doctors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctors);
}


/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsSuccessCopyWith<DoctorsSuccess> get copyWith => _$DoctorsSuccessCopyWithImpl<DoctorsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsSuccess&&const DeepCollectionEquality().equals(other._doctors, _doctors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctors));

@override
String toString() {
  return 'HomeStates.doctorsSuccess(doctors: $doctors)';
}


}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $DoctorsSuccessCopyWith(DoctorsSuccess value, $Res Function(DoctorsSuccess) _then) = _$DoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 List<DoctorModel> doctors
});




}
/// @nodoc
class _$DoctorsSuccessCopyWithImpl<$Res>
    implements $DoctorsSuccessCopyWith<$Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess _self;
  final $Res Function(DoctorsSuccess) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctors = null,}) {
  return _then(DoctorsSuccess(
null == doctors ? _self._doctors : doctors // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,
  ));
}


}

/// @nodoc


class DoctorsError implements HomeStates {
  const DoctorsError({required this.error});
  

 final  String error;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsErrorCopyWith<DoctorsError> get copyWith => _$DoctorsErrorCopyWithImpl<DoctorsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeStates.doctorsError(error: $error)';
}


}

/// @nodoc
abstract mixin class $DoctorsErrorCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $DoctorsErrorCopyWith(DoctorsError value, $Res Function(DoctorsError) _then) = _$DoctorsErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$DoctorsErrorCopyWithImpl<$Res>
    implements $DoctorsErrorCopyWith<$Res> {
  _$DoctorsErrorCopyWithImpl(this._self, this._then);

  final DoctorsError _self;
  final $Res Function(DoctorsError) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DoctorsError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
