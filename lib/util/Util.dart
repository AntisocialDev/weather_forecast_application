import 'package:intl/intl.dart';

class Util {
  static String apiKey = '';

  static String getTime(DateTime date) {
    return DateFormat('EEEE, MMM d, y').format(date);
  }
}
