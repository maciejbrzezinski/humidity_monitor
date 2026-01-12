import 'package:flutter/material.dart';

extension DateTimeFormatters on DateTime {
  String formatToHoursAndMinutes(BuildContext context) {
    final timeOfDay = TimeOfDay.fromDateTime(this);
    final localizations = MaterialLocalizations.of(context);
    return localizations.formatTimeOfDay(timeOfDay, alwaysUse24HourFormat: false);
  }
}