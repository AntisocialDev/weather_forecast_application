import 'package:intl/intl.dart';

class Util {
  static String apiKey = 'e2a58929ac804733a31200802210707';

  static String getTime(DateTime date) {
    return DateFormat('EEEE, MMM d, y').format(date);
  }
}
