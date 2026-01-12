import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/core/app_theme.dart';
import 'package:humidity_monitor/presentation/bloc/measure_data/measure_data_cubit.dart';
import 'package:humidity_monitor/presentation/bloc/measure_data/measure_data_state.dart';
import 'package:humidity_monitor/presentation/widgets/gradient_divider.dart';

class OtherParameters extends StatelessWidget {
  const OtherParameters({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: SystemColors.surface1(),
      surfaceTintColor: Colors.transparent,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      shadowColor: SystemColors.borderStrong(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocSelector<MeasureDataCubit, MeasureDataState, double>(
              selector: (state) {
                if (state is MeasureDataLoaded) {
                  return state.measureData.temperature;
                }
                return double.nan;
              },
              builder: (context, temperature) {
                return _SingleParameter(
                  icon: Icons.thermostat_rounded,
                  label: 'Temperature',
                  value: !temperature.isNaN ? '${temperature.toStringAsFixed(1)} °C' : '--',
                );
              },
            ),
            SizedBox(height: 12),
            GradientDivider(),
            SizedBox(height: 12),
            BlocSelector<MeasureDataCubit, MeasureDataState, double>(
              selector: (state) {
                if (state is MeasureDataLoaded) {
                  return state.measureData.lightLevel;
                }
                return double.nan;
              },
              builder: (context, lightLevel) {
                return _SingleParameter(
                  icon: Icons.wb_sunny_rounded,
                  label: 'Light Level',
                  value: !lightLevel.isNaN ? '${lightLevel.toStringAsFixed(0)} %' : '--',
                );
              },
            ),
            SizedBox(height: 12),
            GradientDivider(),
            SizedBox(height: 12),
            BlocSelector<MeasureDataCubit, MeasureDataState, double>(
              selector: (state) {
                if (state is MeasureDataLoaded) {
                  return state.measureData.airHumidity;
                }
                return double.nan;
              },
              builder: (context, airHumidity) {
                return _SingleParameter(
                  icon: Icons.opacity_rounded,
                  label: 'Air Humidity',
                  value: !airHumidity.isNaN ? '${airHumidity.toStringAsFixed(1)} %' : '--',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SingleParameter extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _SingleParameter({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: TextColors.tertiary(), size: 16),
            SizedBox(width: 8),
            Text(label, style: TextStyles.labelSmall(color: TextColors.tertiary())),
          ],
        ),
        Text(value, style: TextStyles.labelMedium(color: TextColors.primary())),
      ],
    );
  }
}
