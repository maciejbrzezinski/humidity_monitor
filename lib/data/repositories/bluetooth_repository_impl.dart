import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:humidity_monitor/core/failure.dart';
import 'package:humidity_monitor/data/data_sources/bluetooth_data_source.dart';
import 'package:humidity_monitor/data/mappers/measure_data_mapper.dart';
import 'package:humidity_monitor/domain/enums/bluetooth_connection.dart';
import 'package:humidity_monitor/domain/models/measure_data.dart';
import 'package:humidity_monitor/domain/repositories/bluetooth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BluetoothRepository)
class BluetoothRepositoryImpl extends BluetoothRepository {
  final BluetoothDataSource _bluetoothDataSource;
  final MeasureDataMapper _measureDataMapper;

  BluetoothRepositoryImpl(this._bluetoothDataSource, this._measureDataMapper);

  final StreamController<MeasureData> _measureController = StreamController<MeasureData>.broadcast();
  StreamSubscription<List<int>>? _bytesSubscription;

  @override
  Future<Either<Failure, void>> connect() async {
    try {
      await _bluetoothDataSource.disconnect();
      await _bluetoothDataSource.connect();

      await _bytesSubscription?.cancel();
      _bytesSubscription = _bluetoothDataSource.valueBytesStream.listen((bytes) {
        final mapped = _measureDataMapper.tryFromBytes(bytes);
        if (mapped != null) _measureController.add(mapped);
      });

      return const Right(null);
    } catch (e) {
      return Left(BluetoothFailure(message: e.toString()));
    }
  }

  @override
  Stream<MeasureData> getMeasureDataStream() => _measureController.stream;

  @override
  Stream<BluetoothConnection> getBluetoothConnectionStateStream() => _bluetoothDataSource.connectionStream;
}
