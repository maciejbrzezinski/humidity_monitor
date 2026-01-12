import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/domain/use_cases/get_measure_data_stream_use_case.dart';
import 'package:humidity_monitor/presentation/bloc/measure_data/measure_data_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MeasureDataCubit extends Cubit<MeasureDataState> {
  final GetMeasureDataStreamUseCase _getMeasureDataStreamUseCase;

  MeasureDataCubit(this._getMeasureDataStreamUseCase) : super(const MeasureDataState.loading()) {
    _getMeasureDataStreamUseCase().listen(
      (measureData) {
        if (!isClosed) {
          emit(MeasureDataState.loaded(measureData: measureData));
        }
      },
      onError: (error) {
        if (!isClosed) {
          emit(MeasureDataState.error(message: error.toString()));
        }
      },
    );
  }
}
