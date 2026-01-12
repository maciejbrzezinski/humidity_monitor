// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MeasureDataState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasureDataState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeasureDataState()';
}


}

/// @nodoc
class $MeasureDataStateCopyWith<$Res>  {
$MeasureDataStateCopyWith(MeasureDataState _, $Res Function(MeasureDataState) __);
}


/// Adds pattern-matching-related methods to [MeasureDataState].
extension MeasureDataStatePatterns on MeasureDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MeasureDataLoading value)?  loading,TResult Function( MeasureDataLoaded value)?  loaded,TResult Function( MeasureDataError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MeasureDataLoading() when loading != null:
return loading(_that);case MeasureDataLoaded() when loaded != null:
return loaded(_that);case MeasureDataError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MeasureDataLoading value)  loading,required TResult Function( MeasureDataLoaded value)  loaded,required TResult Function( MeasureDataError value)  error,}){
final _that = this;
switch (_that) {
case MeasureDataLoading():
return loading(_that);case MeasureDataLoaded():
return loaded(_that);case MeasureDataError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MeasureDataLoading value)?  loading,TResult? Function( MeasureDataLoaded value)?  loaded,TResult? Function( MeasureDataError value)?  error,}){
final _that = this;
switch (_that) {
case MeasureDataLoading() when loading != null:
return loading(_that);case MeasureDataLoaded() when loaded != null:
return loaded(_that);case MeasureDataError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( MeasureData measureData)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MeasureDataLoading() when loading != null:
return loading();case MeasureDataLoaded() when loaded != null:
return loaded(_that.measureData);case MeasureDataError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( MeasureData measureData)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case MeasureDataLoading():
return loading();case MeasureDataLoaded():
return loaded(_that.measureData);case MeasureDataError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( MeasureData measureData)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case MeasureDataLoading() when loading != null:
return loading();case MeasureDataLoaded() when loaded != null:
return loaded(_that.measureData);case MeasureDataError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MeasureDataLoading implements MeasureDataState {
  const MeasureDataLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasureDataLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeasureDataState.loading()';
}


}




/// @nodoc


class MeasureDataLoaded implements MeasureDataState {
  const MeasureDataLoaded({required this.measureData});
  

 final  MeasureData measureData;

/// Create a copy of MeasureDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasureDataLoadedCopyWith<MeasureDataLoaded> get copyWith => _$MeasureDataLoadedCopyWithImpl<MeasureDataLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasureDataLoaded&&(identical(other.measureData, measureData) || other.measureData == measureData));
}


@override
int get hashCode => Object.hash(runtimeType,measureData);

@override
String toString() {
  return 'MeasureDataState.loaded(measureData: $measureData)';
}


}

/// @nodoc
abstract mixin class $MeasureDataLoadedCopyWith<$Res> implements $MeasureDataStateCopyWith<$Res> {
  factory $MeasureDataLoadedCopyWith(MeasureDataLoaded value, $Res Function(MeasureDataLoaded) _then) = _$MeasureDataLoadedCopyWithImpl;
@useResult
$Res call({
 MeasureData measureData
});


$MeasureDataCopyWith<$Res> get measureData;

}
/// @nodoc
class _$MeasureDataLoadedCopyWithImpl<$Res>
    implements $MeasureDataLoadedCopyWith<$Res> {
  _$MeasureDataLoadedCopyWithImpl(this._self, this._then);

  final MeasureDataLoaded _self;
  final $Res Function(MeasureDataLoaded) _then;

/// Create a copy of MeasureDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? measureData = null,}) {
  return _then(MeasureDataLoaded(
measureData: null == measureData ? _self.measureData : measureData // ignore: cast_nullable_to_non_nullable
as MeasureData,
  ));
}

/// Create a copy of MeasureDataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureDataCopyWith<$Res> get measureData {
  
  return $MeasureDataCopyWith<$Res>(_self.measureData, (value) {
    return _then(_self.copyWith(measureData: value));
  });
}
}

/// @nodoc


class MeasureDataError implements MeasureDataState {
  const MeasureDataError({required this.message});
  

 final  String message;

/// Create a copy of MeasureDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasureDataErrorCopyWith<MeasureDataError> get copyWith => _$MeasureDataErrorCopyWithImpl<MeasureDataError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasureDataError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MeasureDataState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $MeasureDataErrorCopyWith<$Res> implements $MeasureDataStateCopyWith<$Res> {
  factory $MeasureDataErrorCopyWith(MeasureDataError value, $Res Function(MeasureDataError) _then) = _$MeasureDataErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MeasureDataErrorCopyWithImpl<$Res>
    implements $MeasureDataErrorCopyWith<$Res> {
  _$MeasureDataErrorCopyWithImpl(this._self, this._then);

  final MeasureDataError _self;
  final $Res Function(MeasureDataError) _then;

/// Create a copy of MeasureDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MeasureDataError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
