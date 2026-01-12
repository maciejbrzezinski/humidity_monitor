import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/core/app_theme.dart';
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_cubit.dart';
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_state.dart';
import 'package:humidity_monitor/presentation/widgets/bluetooth_not_connected_placeholder.dart';
import 'package:humidity_monitor/presentation/widgets/gradient_divider.dart';
import 'package:humidity_monitor/presentation/widgets/measure_data_info.dart';
import 'package:humidity_monitor/presentation/widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SystemColors.background(),
      body: SafeArea(
        child: Column(
          children: [
            TopBar(),
            GradientDivider(),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 110),
                child: BlocSelector<BluetoothConnectivityCubit, BluetoothConnectivityState, bool>(
                  selector: (state) => state is BluetoothConnected,
                  builder: (context, isConnected) {
                    if (!isConnected) {
                      return Padding(padding: const EdgeInsets.all(32.0), child: BluetoothNotConnectedPlaceholder());
                    }
        
                    return MeasureDataInfo();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
