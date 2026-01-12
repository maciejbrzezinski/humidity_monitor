import 'package:humidity_monitor/domain/models/measure_data.dart';
import 'package:humidity_monitor/domain/repositories/bluetooth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMeasureDataStreamUseCase {
  final BluetoothRepository _repository;

  GetMeasureDataStreamUseCase(this._repository);

  Stream<MeasureData> call() {
    return _repository.getMeasureDataStream();
  }
}
