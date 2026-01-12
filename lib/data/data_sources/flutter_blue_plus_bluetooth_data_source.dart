import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:humidity_monitor/data/data_sources/bluetooth_data_source.dart';
import 'package:humidity_monitor/domain/enums/bluetooth_connection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BluetoothDataSource)
class FlutterBluePlusBluetoothDataSource implements BluetoothDataSource {
  static final Guid serviceUuid = Guid("4fafc201-1fb5-459e-8fcc-c5c9c331914b");
  static final Guid charUuid = Guid("beb5483e-36e1-4688-b7f5-ea07361b26a8");
  static const String devicePlatformName = "ESP32-Plant-Sensor";

  final StreamController<List<int>> _valueBytesController = StreamController<List<int>>.broadcast();
  final StreamController<BluetoothConnection> _connectionController = StreamController<BluetoothConnection>.broadcast();

  BluetoothDevice? _device;
  BluetoothCharacteristic? _characteristic;

  StreamSubscription<List<int>>? _valueSubscription;
  StreamSubscription<BluetoothConnectionState>? _connectionSubscription;

  @override
  Stream<List<int>> get valueBytesStream => _valueBytesController.stream;

  @override
  Stream<BluetoothConnection> get connectionStream => _connectionController.stream;

  @override
  Future<void> connect() async {
    // adapter on
    await FlutterBluePlus.adapterState.where((s) => s == BluetoothAdapterState.on).first;

    await FlutterBluePlus.startScan(timeout: const Duration(seconds: 60), withServices: [serviceUuid]);
    await Future.delayed(const Duration(seconds: 2));
    final results = FlutterBluePlus.lastScanResults;
    await FlutterBluePlus.stopScan();

    final device = results.firstWhereOrNull((r) => r.device.platformName == devicePlatformName)?.device;
    if (device == null) {
      throw Exception("Not found the measuring device");
    }
    _device = device;

    // Connection state stream
    _connectionSubscription = device.connectionState.listen((state) {
      final mapped = state == BluetoothConnectionState.connected
          ? BluetoothConnection.connected
          : BluetoothConnection.disconnected;
      _connectionController.add(mapped);
    });

    await device.connect(license: License.free, timeout: const Duration(seconds: 10), autoConnect: false);

    final services = await device.discoverServices();
    final svc = services.firstWhere((s) => s.uuid == serviceUuid);

    final characteristic = svc.characteristics.firstWhereOrNull((c) => c.uuid == charUuid);
    if (characteristic == null) {
      throw Exception("There was an error connecting to the device");
    }

    _characteristic = characteristic;

    await characteristic.setNotifyValue(true);

    _valueSubscription = characteristic.onValueReceived.listen((bytes) {
      _valueBytesController.add(bytes);
    });
  }

  @override
  Future<void> disconnect() async {
    final device = _device;
    final characteristic = _characteristic;

    await _valueSubscription?.cancel();
    await _connectionSubscription?.cancel();
    _valueSubscription = null;
    _connectionSubscription = null;

    if (characteristic != null) {
      try {
        await characteristic.setNotifyValue(false);
      } catch (_) {}
    }

    if (device != null) {
      try {
        await device.disconnect();
      } catch (_) {}
    }

    _device = null;
    _characteristic = null;

    _connectionController.add(BluetoothConnection.disconnected);
  }

  @override
  Future<void> dispose() async {
    await disconnect();
    await _valueBytesController.close();
    await _connectionController.close();
  }
}
