import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/core/app_theme.dart';
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_cubit.dart';
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_state.dart';

class BluetoothConnectivityIndicator extends StatelessWidget {
  const BluetoothConnectivityIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BluetoothConnectivityCubit, BluetoothConnectivityState, bool>(
      selector: (state) => state is BluetoothConnected,
      builder: (context, isConnected) {
        return Row(
          textDirection: TextDirection.rtl,
          children: [
            Icon(isConnected ? Icons.bluetooth_outlined : Icons.bluetooth_disabled_outlined, size: 16),
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isConnected ? SystemColors.success() : SystemColors.error(),
              ),
            ),
            SizedBox(width: 4),
            Text(isConnected ? 'Connected' : 'Disconnected', style: TextStyles.caption(color: TextColors.secondary())),
          ],
        );
      },
    );
  }
}
