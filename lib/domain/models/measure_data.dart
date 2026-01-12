import 'package:freezed_annotation/freezed_annotation.dart';

part 'measure_data.freezed.dart';

part 'measure_data.g.dart';

@freezed
abstract class MeasureData with _$MeasureData {
  const MeasureData._();

  const factory MeasureData({
    required DateTime timestamp,
    required double temperature,
    required double soilHumidity,
    required double lightLevel,
    required double airHumidity,
  }) = _MeasureData;

  factory MeasureData.fromJson(Map<String, dynamic> json) => _$MeasureDataFromJson(json);
}
