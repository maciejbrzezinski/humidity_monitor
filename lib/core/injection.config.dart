// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:humidity_monitor/data/data_sources/bluetooth_data_source.dart'
    as _i648;
import 'package:humidity_monitor/data/data_sources/flutter_blue_plus_bluetooth_data_source.dart'
    as _i323;
import 'package:humidity_monitor/data/mappers/measure_data_mapper.dart'
    as _i321;
import 'package:humidity_monitor/data/repositories/bluetooth_repository_impl.dart'
    as _i855;
import 'package:humidity_monitor/domain/repositories/bluetooth_repository.dart'
    as _i474;
import 'package:humidity_monitor/domain/use_cases/connect_bluetooth_use_case.dart'
    as _i342;
import 'package:humidity_monitor/domain/use_cases/get_measure_data_stream_use_case.dart'
    as _i294;
import 'package:humidity_monitor/domain/use_cases/watch_for_bluetooth_disconnection_use_case.dart'
    as _i576;
import 'package:humidity_monitor/presentation/bloc/bluetooth_connectivity/bluetooth_connectivity_cubit.dart'
    as _i664;
import 'package:humidity_monitor/presentation/bloc/measure_data/measure_data_cubit.dart'
    as _i230;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i321.MeasureDataMapper>(() => _i321.MeasureDataMapper());
    gh.lazySingleton<_i648.BluetoothDataSource>(
      () => _i323.FlutterBluePlusBluetoothDataSource(),
    );
    gh.lazySingleton<_i474.BluetoothRepository>(
      () => _i855.BluetoothRepositoryImpl(
        gh<_i648.BluetoothDataSource>(),
        gh<_i321.MeasureDataMapper>(),
      ),
    );
    gh.factory<_i342.ConnectBluetoothUseCase>(
      () => _i342.ConnectBluetoothUseCase(gh<_i474.BluetoothRepository>()),
    );
    gh.factory<_i294.GetMeasureDataStreamUseCase>(
      () => _i294.GetMeasureDataStreamUseCase(gh<_i474.BluetoothRepository>()),
    );
    gh.factory<_i576.WatchForBluetoothDisconnectionUseCase>(
      () => _i576.WatchForBluetoothDisconnectionUseCase(
        gh<_i474.BluetoothRepository>(),
      ),
    );
    gh.factory<_i230.MeasureDataCubit>(
      () => _i230.MeasureDataCubit(gh<_i294.GetMeasureDataStreamUseCase>()),
    );
    gh.factory<_i664.BluetoothConnectivityCubit>(
      () => _i664.BluetoothConnectivityCubit(
        gh<_i576.WatchForBluetoothDisconnectionUseCase>(),
        gh<_i342.ConnectBluetoothUseCase>(),
      ),
    );
    return this;
  }
}
