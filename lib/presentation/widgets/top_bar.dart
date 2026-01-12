import 'package:flutter/material.dart';
import 'package:humidity_monitor/core/app_theme.dart';
import 'package:humidity_monitor/presentation/widgets/bluetooth_connectivity_indicator.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Monstera', style: TextStyles.titleSmall(color: TextColors.primary())),
              Text('Soil monitor', style: TextStyles.caption(color: TextColors.secondary())),
            ],
          ),
          BluetoothConnectivityIndicator(),
        ],
      ),
    );
  }
}
