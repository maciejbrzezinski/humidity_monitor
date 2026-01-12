import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:humidity_monitor/core/app_theme.dart';
import 'package:humidity_monitor/core/injection.dart';
import 'package:humidity_monitor/presentation/bloc/measure_data/measure_data_cubit.dart';
import 'package:humidity_monitor/presentation/bloc/measure_data/measure_data_state.dart';
import 'package:humidity_monitor/presentation/widgets/current_humidity_info.dart';
import 'package:humidity_monitor/presentation/widgets/other_parameters.dart';

class MeasureDataInfo extends StatelessWidget {
  const MeasureDataInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MeasureDataCubit>(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<MeasureDataCubit, MeasureDataState>(
            builder: (context, measureDataState) {
              if (measureDataState is MeasureDataLoading) {
                return Center(child: CircularProgressIndicator(color: TextColors.secondary()));
              }
              if (measureDataState is MeasureDataError) {
                return Center(
                  child: Text(
                    'Error: ${measureDataState.message}',
                    style: TextStyles.labelMedium(color: TextColors.danger()),
                  ),
                );
              }
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CurrentHumidityInfo(),
                  SizedBox(height: 32),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 32), child: OtherParameters()),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
