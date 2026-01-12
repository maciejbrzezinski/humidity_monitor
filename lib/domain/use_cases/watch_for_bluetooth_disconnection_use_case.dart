import 'package:humidity_monitor/domain/enums/bluetooth_connection.dart';
import 'package:humidity_monitor/domain/repositories/bluetooth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class WatchForBluetoothDisconnectionUseCase {
  final BluetoothRepository _repository;

  WatchForBluetoothDisconnectionUseCase(this._repository);

  Stream<BluetoothConnection> call() {
    return _repository.getBluetoothConnectionStateStream().where((state) => state == BluetoothConnection.disconnected);
  }
}
