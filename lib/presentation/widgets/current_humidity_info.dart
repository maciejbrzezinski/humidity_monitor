import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/core/app_theme.dart';
import 'package:humidity_monitor/core/date_formatters.dart';
import 'package:humidity_monitor/presentation/bloc/measure_data/measure_data_cubit.dart';
import 'package:humidity_monitor/presentation/bloc/measure_data/measure_data_state.dart';

class CurrentHumidityInfo extends StatelessWidget {
  const CurrentHumidityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final humidity = context.select<MeasureDataCubit, double?>((cubit) {
      final state = cubit.state;
      if (state is MeasureDataLoaded) {
        return state.measureData.soilHumidity;
      }
      return null;
    });

    final lastUpdate = context.select<MeasureDataCubit, DateTime?>((cubit) {
      final state = cubit.state;
      if (state is MeasureDataLoaded) {
        return state.measureData.timestamp;
      }
      return null;
    });

    if (humidity == null || lastUpdate == null) {
      return const SizedBox.shrink();
    }

    final color = humidity < 30
        ? HumidityColors.dry()
        : (humidity < 60 ? HumidityColors.optimal() : HumidityColors.wet());

    return Column(
      children: [
        Text('${humidity.toStringAsFixed(0)}%', style: TextStyles.titleLarge(color: color).copyWith(fontSize: 120)),
        Text('Soil moisture now', style: TextStyles.labelSmall(color: TextColors.secondary())),
        SizedBox(height: 8),
        _SoiMoistureBadge(humidity: humidity, color: color),
        SizedBox(height: 8),
        Text(
          'Last updated: ${lastUpdate.formatToHoursAndMinutes(context)}',
          style: TextStyles.caption(color: TextColors.tertiary()),
        ),
      ],
    );
  }
}

class _SoiMoistureBadge extends StatelessWidget {
  final double humidity;
  final Color color;

  const _SoiMoistureBadge({required this.humidity, required this.color});

  @override
  Widget build(BuildContext context) {
    final copy = humidity < 30 ? 'Dry' : (humidity < 60 ? 'Optimal' : 'Wet');

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Text(copy, style: TextStyles.labelSmall(color: TextColors.onPrimary())),
    );
  }
}
