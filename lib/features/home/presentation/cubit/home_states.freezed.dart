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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SpecializationLoading value)?  specializationLoading,TResult Function( SpecializationSuccess value)?  specializationSuccess,TResult Function( SpecializationError value)?  specializationError,TResult Function( SpecializationSelected value)?  specializationSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case SpecializationError() when specializationError != null:
return specializationError(_that);case SpecializationSelected() when specializationSelected != null:
return specializationSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SpecializationLoading value)  specializationLoading,required TResult Function( SpecializationSuccess value)  specializationSuccess,required TResult Function( SpecializationError value)  specializationError,required TResult Function( SpecializationSelected value)  specializationSelected,}){
final _that = this;
switch (_that) {
case SpecializationLoading():
return specializationLoading(_that);case SpecializationSuccess():
return specializationSuccess(_that);case SpecializationError():
return specializationError(_that);case SpecializationSelected():
return specializationSelected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SpecializationLoading value)?  specializationLoading,TResult? Function( SpecializationSuccess value)?  specializationSuccess,TResult? Function( SpecializationError value)?  specializationError,TResult? Function( SpecializationSelected value)?  specializationSelected,}){
final _that = this;
switch (_that) {
case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case SpecializationError() when specializationError != null:
return specializationError(_that);case SpecializationSelected() when specializationSelected != null:
return specializationSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  specializationLoading,TResult Function( SpecializationsResponseModel data)?  specializationSuccess,TResult Function( String error)?  specializationError,TResult Function( int index)?  specializationSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.data);case SpecializationError() when specializationError != null:
return specializationError(_that.error);case SpecializationSelected() when specializationSelected != null:
return specializationSelected(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  specializationLoading,required TResult Function( SpecializationsResponseModel data)  specializationSuccess,required TResult Function( String error)  specializationError,required TResult Function( int index)  specializationSelected,}) {final _that = this;
switch (_that) {
case SpecializationLoading():
return specializationLoading();case SpecializationSuccess():
return specializationSuccess(_that.data);case SpecializationError():
return specializationError(_that.error);case SpecializationSelected():
return specializationSelected(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  specializationLoading,TResult? Function( SpecializationsResponseModel data)?  specializationSuccess,TResult? Function( String error)?  specializationError,TResult? Function( int index)?  specializationSelected,}) {final _that = this;
switch (_that) {
case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.data);case SpecializationError() when specializationError != null:
return specializationError(_that.error);case SpecializationSelected() when specializationSelected != null:
return specializationSelected(_that.index);case _:
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


class SpecializationSelected implements HomeStates {
  const SpecializationSelected(this.index);
  

 final  int index;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationSelectedCopyWith<SpecializationSelected> get copyWith => _$SpecializationSelectedCopyWithImpl<SpecializationSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationSelected&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'HomeStates.specializationSelected(index: $index)';
}


}

/// @nodoc
abstract mixin class $SpecializationSelectedCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $SpecializationSelectedCopyWith(SpecializationSelected value, $Res Function(SpecializationSelected) _then) = _$SpecializationSelectedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$SpecializationSelectedCopyWithImpl<$Res>
    implements $SpecializationSelectedCopyWith<$Res> {
  _$SpecializationSelectedCopyWithImpl(this._self, this._then);

  final SpecializationSelected _self;
  final $Res Function(SpecializationSelected) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(SpecializationSelected(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
