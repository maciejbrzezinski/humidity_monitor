// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluetooth_connectivity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BluetoothConnectivityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothConnectivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothConnectivityState()';
}


}

/// @nodoc
class $BluetoothConnectivityStateCopyWith<$Res>  {
$BluetoothConnectivityStateCopyWith(BluetoothConnectivityState _, $Res Function(BluetoothConnectivityState) __);
}


/// Adds pattern-matching-related methods to [BluetoothConnectivityState].
extension BluetoothConnectivityStatePatterns on BluetoothConnectivityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BluetoothDisconnected value)?  disconnected,TResult Function( BluetoothConnecting value)?  connecting,TResult Function( BluetoothConnected value)?  connected,TResult Function( BluetoothError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BluetoothDisconnected() when disconnected != null:
return disconnected(_that);case BluetoothConnecting() when connecting != null:
return connecting(_that);case BluetoothConnected() when connected != null:
return connected(_that);case BluetoothError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BluetoothDisconnected value)  disconnected,required TResult Function( BluetoothConnecting value)  connecting,required TResult Function( BluetoothConnected value)  connected,required TResult Function( BluetoothError value)  error,}){
final _that = this;
switch (_that) {
case BluetoothDisconnected():
return disconnected(_that);case BluetoothConnecting():
return connecting(_that);case BluetoothConnected():
return connected(_that);case BluetoothError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BluetoothDisconnected value)?  disconnected,TResult? Function( BluetoothConnecting value)?  connecting,TResult? Function( BluetoothConnected value)?  connected,TResult? Function( BluetoothError value)?  error,}){
final _that = this;
switch (_that) {
case BluetoothDisconnected() when disconnected != null:
return disconnected(_that);case BluetoothConnecting() when connecting != null:
return connecting(_that);case BluetoothConnected() when connected != null:
return connected(_that);case BluetoothError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  disconnected,TResult Function()?  connecting,TResult Function()?  connected,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BluetoothDisconnected() when disconnected != null:
return disconnected();case BluetoothConnecting() when connecting != null:
return connecting();case BluetoothConnected() when connected != null:
return connected();case BluetoothError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  disconnected,required TResult Function()  connecting,required TResult Function()  connected,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case BluetoothDisconnected():
return disconnected();case BluetoothConnecting():
return connecting();case BluetoothConnected():
return connected();case BluetoothError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  disconnected,TResult? Function()?  connecting,TResult? Function()?  connected,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case BluetoothDisconnected() when disconnected != null:
return disconnected();case BluetoothConnecting() when connecting != null:
return connecting();case BluetoothConnected() when connected != null:
return connected();case BluetoothError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class BluetoothDisconnected implements BluetoothConnectivityState {
  const BluetoothDisconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothDisconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothConnectivityState.disconnected()';
}


}




/// @nodoc


class BluetoothConnecting implements BluetoothConnectivityState {
  const BluetoothConnecting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothConnecting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothConnectivityState.connecting()';
}


}




/// @nodoc


class BluetoothConnected implements BluetoothConnectivityState {
  const BluetoothConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BluetoothConnectivityState.connected()';
}


}




/// @nodoc


class BluetoothError implements BluetoothConnectivityState {
  const BluetoothError({required this.message});
  

 final  String message;

/// Create a copy of BluetoothConnectivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BluetoothErrorCopyWith<BluetoothError> get copyWith => _$BluetoothErrorCopyWithImpl<BluetoothError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BluetoothError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BluetoothConnectivityState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $BluetoothErrorCopyWith<$Res> implements $BluetoothConnectivityStateCopyWith<$Res> {
  factory $BluetoothErrorCopyWith(BluetoothError value, $Res Function(BluetoothError) _then) = _$BluetoothErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BluetoothErrorCopyWithImpl<$Res>
    implements $BluetoothErrorCopyWith<$Res> {
  _$BluetoothErrorCopyWithImpl(this._self, this._then);

  final BluetoothError _self;
  final $Res Function(BluetoothError) _then;

/// Create a copy of BluetoothConnectivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BluetoothError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
