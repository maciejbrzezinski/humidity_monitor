import 'dart:convert';
import 'package:humidity_monitor/domain/models/measure_data.dart';
import 'package:injectable/injectable.dart';

@injectable
class MeasureDataMapper {
  MeasureData? tryFromBytes(List<int> bytes) {
    try {
      final plain = utf8.decode(bytes, allowMalformed: true);
      final json = jsonDecode(plain) as Map<String, dynamic>;
      json['timestamp'] = DateTime.now().toIso8601String();
      return MeasureData.fromJson(json);
    } catch (_) {
      return null;
    }
  }
}
