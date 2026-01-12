import 'package:freezed_annotation/freezed_annotation.dart';

part 'bluetooth_connectivity_state.freezed.dart';

@freezed
class BluetoothConnectivityState with _$BluetoothConnectivityState {
  const factory BluetoothConnectivityState.disconnected() = BluetoothDisconnected;

  const factory BluetoothConnectivityState.connecting() = BluetoothConnecting;

  const factory BluetoothConnectivityState.connected() = BluetoothConnected;

  const factory BluetoothConnectivityState.error({required String message}) = BluetoothError;
}
