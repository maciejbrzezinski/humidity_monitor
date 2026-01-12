import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/domain/use_cases/connect_bluetooth_use_case.dart';
import 'package:humidity_monitor/domain/use_cases/watch_for_bluetooth_disconnection_use_case.dart';
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class BluetoothConnectivityCubit extends Cubit<BluetoothConnectivityState> {
  final WatchForBluetoothDisconnectionUseCase _watchForBluetoothDisconnectionUseCase;
  final ConnectBluetoothUseCase _connectBluetoothUseCase;

  BluetoothConnectivityCubit(this._watchForBluetoothDisconnectionUseCase, this._connectBluetoothUseCase)
    : super(const BluetoothConnectivityState.disconnected()) {
    _watchForBluetoothDisconnectionUseCase().listen((_) {
      if (state is BluetoothConnected) {
        emit(const BluetoothConnectivityState.disconnected());
      }
    });
  }

  Future<void> connect() async {
    try {
      emit(const BluetoothConnectivityState.connecting());

      final result = await _connectBluetoothUseCase();

      result.fold(
        (failure) => emit(BluetoothConnectivityState.error(message: failure.message)),
        (_) => emit(const BluetoothConnectivityState.connected()),
      );
    } catch (e) {
      emit(BluetoothConnectivityState.error(message: e.toString()));
    }
  }
}
