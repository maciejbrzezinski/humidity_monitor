import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/core/app_theme.dart';
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_cubit.dart';

class SecondaryButton extends StatelessWidget {
  final String caption;
  final VoidCallback onPressed;

  const SecondaryButton({super.key, required this.caption, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final enabledBackgroundColor = ButtonSecondaryColors.secondaryEnabledBackground();
    final hoveredBackgroundColor = ButtonSecondaryColors.secondaryHoveredBackground();
    final pressedBackgroundColor = ButtonSecondaryColors.secondaryPressedBackground();
    final disabledBackgroundColor = ButtonSecondaryColors.secondaryDisabledBackground();
    final enabledBorderColor = ButtonSecondaryColors.secondaryEnabledBorder();
    final hoveredBorderColor = ButtonSecondaryColors.secondaryHoveredBorder();
    final pressedBorderColor = ButtonSecondaryColors.secondaryPressedBorder();
    final disabledBorderColor = ButtonSecondaryColors.secondaryDisabledBorder();

    return ElevatedButton(
      onPressed: () => context.read<BluetoothConnectivityCubit>().connect(),
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0)),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
        textStyle: WidgetStateProperty.all(TextStyles.titleSmall(color: TextColors.primary())),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return hoveredBackgroundColor;
          } else if (states.contains(WidgetState.pressed)) {
            return pressedBackgroundColor;
          } else if (states.contains(WidgetState.disabled)) {
            return disabledBackgroundColor;
          }
          return enabledBackgroundColor;
        }),
        foregroundColor: WidgetStateProperty.all<Color>(TextColors.primary()),
        side: WidgetStateProperty.resolveWith<BorderSide>((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return BorderSide(color: disabledBorderColor, width: 1);
          } else if (states.contains(WidgetState.pressed)) {
            return BorderSide(color: pressedBorderColor, width: 1);
          } else if (states.contains(WidgetState.hovered)) {
            return BorderSide(color: hoveredBorderColor, width: 1);
          }
          return BorderSide(color: enabledBorderColor, width: 1);
        }),
      ),
      child: Text(caption),
    );
  }
}
