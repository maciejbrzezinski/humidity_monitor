// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeasureData _$MeasureDataFromJson(Map<String, dynamic> json) => _MeasureData(
  timestamp: DateTime.parse(json['timestamp'] as String),
  temperature: (json['temperature'] as num).toDouble(),
  soilHumidity: (json['soilHumidity'] as num).toDouble(),
  lightLevel: (json['lightLevel'] as num).toDouble(),
  airHumidity: (json['airHumidity'] as num).toDouble(),
);

Map<String, dynamic> _$MeasureDataToJson(_MeasureData instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'temperature': instance.temperature,
      'soilHumidity': instance.soilHumidity,
      'lightLevel': instance.lightLevel,
      'airHumidity': instance.airHumidity,
    };
