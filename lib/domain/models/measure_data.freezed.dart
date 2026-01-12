// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeasureData {

 DateTime get timestamp; double get temperature; double get soilHumidity; double get lightLevel; double get airHumidity;
/// Create a copy of MeasureData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasureDataCopyWith<MeasureData> get copyWith => _$MeasureDataCopyWithImpl<MeasureData>(this as MeasureData, _$identity);

  /// Serializes this MeasureData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasureData&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.soilHumidity, soilHumidity) || other.soilHumidity == soilHumidity)&&(identical(other.lightLevel, lightLevel) || other.lightLevel == lightLevel)&&(identical(other.airHumidity, airHumidity) || other.airHumidity == airHumidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,temperature,soilHumidity,lightLevel,airHumidity);

@override
String toString() {
  return 'MeasureData(timestamp: $timestamp, temperature: $temperature, soilHumidity: $soilHumidity, lightLevel: $lightLevel, airHumidity: $airHumidity)';
}


}

/// @nodoc
abstract mixin class $MeasureDataCopyWith<$Res>  {
  factory $MeasureDataCopyWith(MeasureData value, $Res Function(MeasureData) _then) = _$MeasureDataCopyWithImpl;
@useResult
$Res call({
 DateTime timestamp, double temperature, double soilHumidity, double lightLevel, double airHumidity
});




}
/// @nodoc
class _$MeasureDataCopyWithImpl<$Res>
    implements $MeasureDataCopyWith<$Res> {
  _$MeasureDataCopyWithImpl(this._self, this._then);

  final MeasureData _self;
  final $Res Function(MeasureData) _then;

/// Create a copy of MeasureData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? temperature = null,Object? soilHumidity = null,Object? lightLevel = null,Object? airHumidity = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,soilHumidity: null == soilHumidity ? _self.soilHumidity : soilHumidity // ignore: cast_nullable_to_non_nullable
as double,lightLevel: null == lightLevel ? _self.lightLevel : lightLevel // ignore: cast_nullable_to_non_nullable
as double,airHumidity: null == airHumidity ? _self.airHumidity : airHumidity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MeasureData].
extension MeasureDataPatterns on MeasureData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeasureData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeasureData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeasureData value)  $default,){
final _that = this;
switch (_that) {
case _MeasureData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeasureData value)?  $default,){
final _that = this;
switch (_that) {
case _MeasureData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime timestamp,  double temperature,  double soilHumidity,  double lightLevel,  double airHumidity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeasureData() when $default != null:
return $default(_that.timestamp,_that.temperature,_that.soilHumidity,_that.lightLevel,_that.airHumidity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime timestamp,  double temperature,  double soilHumidity,  double lightLevel,  double airHumidity)  $default,) {final _that = this;
switch (_that) {
case _MeasureData():
return $default(_that.timestamp,_that.temperature,_that.soilHumidity,_that.lightLevel,_that.airHumidity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime timestamp,  double temperature,  double soilHumidity,  double lightLevel,  double airHumidity)?  $default,) {final _that = this;
switch (_that) {
case _MeasureData() when $default != null:
return $default(_that.timestamp,_that.temperature,_that.soilHumidity,_that.lightLevel,_that.airHumidity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeasureData extends MeasureData {
  const _MeasureData({required this.timestamp, required this.temperature, required this.soilHumidity, required this.lightLevel, required this.airHumidity}): super._();
  factory _MeasureData.fromJson(Map<String, dynamic> json) => _$MeasureDataFromJson(json);

@override final  DateTime timestamp;
@override final  double temperature;
@override final  double soilHumidity;
@override final  double lightLevel;
@override final  double airHumidity;

/// Create a copy of MeasureData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasureDataCopyWith<_MeasureData> get copyWith => __$MeasureDataCopyWithImpl<_MeasureData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeasureDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeasureData&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.soilHumidity, soilHumidity) || other.soilHumidity == soilHumidity)&&(identical(other.lightLevel, lightLevel) || other.lightLevel == lightLevel)&&(identical(other.airHumidity, airHumidity) || other.airHumidity == airHumidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,temperature,soilHumidity,lightLevel,airHumidity);

@override
String toString() {
  return 'MeasureData(timestamp: $timestamp, temperature: $temperature, soilHumidity: $soilHumidity, lightLevel: $lightLevel, airHumidity: $airHumidity)';
}


}

/// @nodoc
abstract mixin class _$MeasureDataCopyWith<$Res> implements $MeasureDataCopyWith<$Res> {
  factory _$MeasureDataCopyWith(_MeasureData value, $Res Function(_MeasureData) _then) = __$MeasureDataCopyWithImpl;
@override @useResult
$Res call({
 DateTime timestamp, double temperature, double soilHumidity, double lightLevel, double airHumidity
});




}
/// @nodoc
class __$MeasureDataCopyWithImpl<$Res>
    implements _$MeasureDataCopyWith<$Res> {
  __$MeasureDataCopyWithImpl(this._self, this._then);

  final _MeasureData _self;
  final $Res Function(_MeasureData) _then;

/// Create a copy of MeasureData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? temperature = null,Object? soilHumidity = null,Object? lightLevel = null,Object? airHumidity = null,}) {
  return _then(_MeasureData(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,soilHumidity: null == soilHumidity ? _self.soilHumidity : soilHumidity // ignore: cast_nullable_to_non_nullable
as double,lightLevel: null == lightLevel ? _self.lightLevel : lightLevel // ignore: cast_nullable_to_non_nullable
as double,airHumidity: null == airHumidity ? _self.airHumidity : airHumidity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
