import 'package:dartz/dartz.dart';
import 'package:humidity_monitor/core/failure.dart';
import 'package:humidity_monitor/domain/repositories/bluetooth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConnectBluetoothUseCase {
  final BluetoothRepository _repository;

  ConnectBluetoothUseCase(this._repository);

  Future<Either<Failure, void>> call() async {
    final connectionResult = await _repository.connect();
    return connectionResult;
  }
}
