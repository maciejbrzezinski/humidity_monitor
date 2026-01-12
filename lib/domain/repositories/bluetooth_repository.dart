import 'package:dartz/dartz.dart';
import 'package:humidity_monitor/core/failure.dart';
import 'package:humidity_monitor/domain/enums/bluetooth_connection.dart';
import 'package:humidity_monitor/domain/models/measure_data.dart';

abstract class BluetoothRepository {
  Future<Either<Failure, void>> connect();

  Stream<MeasureData> getMeasureDataStream();

  Stream<BluetoothConnection> getBluetoothConnectionStateStream();
}
