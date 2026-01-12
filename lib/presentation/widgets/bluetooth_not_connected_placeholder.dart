import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/core/app_theme.dart';
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_cubit.dart';
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_state.dart';
import 'package:humidity_monitor/presentation/widgets/secondary_button.dart';

class BluetoothNotConnectedPlaceholder extends StatelessWidget {
  const BluetoothNotConnectedPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BluetoothConnectivityCubit, BluetoothConnectivityState>(
      builder: (context, state) {
        String message;
        String? subMessage;
        if (state is BluetoothDisconnected) {
          message = 'Disconnected';
          subMessage = 'Connect measuring device to see results';
        } else if (state is BluetoothConnecting) {
          message = 'Connecting...';
        } else if (state is BluetoothError) {
          message = 'Disconnected';
          subMessage = 'Error: ${state.message}';
        } else {
          message = 'Unknown state.';
        }

        return Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(Icons.bluetooth_disabled_rounded, size: 120, color: SystemColors.error()),
                SizedBox(height: 8),
                Text(
                  message,
                  style: TextStyles.titleLarge(color: TextColors.primary()),
                  textAlign: TextAlign.center,
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: subMessage != null
                      ? Column(
                          children: [
                            SizedBox(height: 8),
                            Text(
                              subMessage,
                              style: TextStyles.bodyMedium(color: TextColors.secondary()),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      : SizedBox.shrink(),
                ),
                SizedBox(height: 120),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SecondaryButton(
                caption: 'Connect',
                onPressed: () => context.read<BluetoothConnectivityCubit>().connect(),
              ),
            ),
          ],
        );
      },
    );
  }
}
