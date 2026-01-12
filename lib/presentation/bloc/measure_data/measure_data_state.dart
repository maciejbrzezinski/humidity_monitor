import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:humidity_monitor/domain/models/measure_data.dart';

part 'measure_data_state.freezed.dart';

@freezed
class MeasureDataState with _$MeasureDataState {
  const factory MeasureDataState.loading() = MeasureDataLoading;

  const factory MeasureDataState.loaded({required MeasureData measureData}) = MeasureDataLoaded;

  const factory MeasureDataState.error({required String message}) = MeasureDataError;
}
