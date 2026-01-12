import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.bluetoothFailure({required String message}) = BluetoothFailure;

  const factory Failure.unknownFailure({required String message}) = UnknownFailure;
}
