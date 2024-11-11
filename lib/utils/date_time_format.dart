import 'package:intl/intl.dart';

String convertTimestampToDateTime(int timestamp) {
  // Convert timestamp to DateTime
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

  // Format date and time
  String formattedDate = DateFormat('d MMM').format(date); // Day and month in short form
  String formattedTime = DateFormat('h:mma').format(date).toLowerCase(); // Time in 12-hour format with lowercase am/pm

  return '$formattedDate | $formattedTime';
}
