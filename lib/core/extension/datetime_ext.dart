import 'package:intl/intl.dart';

extension GetDate on DateTime {
  String getDate() {
    final dateFormat = DateFormat("yyyy-MM-dd");

    return dateFormat.format(this);
  }

  String getLastYear() {
    return subtract(const Duration(days: 365)).getDate();
  }
}
