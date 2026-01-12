import 'dart:async';

import 'package:humidity_monitor/domain/enums/bluetooth_connection.dart';

abstract class BluetoothDataSource {
  /// Starts scan, connects, sets notify.
  /// Throws on failure.
  Future<void> connect();

  Stream<List<int>> get valueBytesStream;

  Stream<BluetoothConnection> get connectionStream;

  Future<void> disconnect();

  Future<void> dispose();
}
