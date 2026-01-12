import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:humidity_monitor/core/app_theme.dart';

class GradientDivider extends StatelessWidget {
  final bool isVertical;

  const GradientDivider({super.key, this.isVertical = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isVertical ? double.infinity : 1,
      width: isVertical ? 1 : double.infinity,
      decoration: BoxDecoration(
        color: SystemColors.surface1(),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              SystemColors.borderSubtle().withValues(alpha: 0),
              SystemColors.borderStrong(),
              SystemColors.borderStrong(),
              SystemColors.borderSubtle().withValues(alpha: 0),
            ],
            stops: [0.0, 0.1, 0.9, 1.0],
          ),
        ),
      ),
    );
  }
}
