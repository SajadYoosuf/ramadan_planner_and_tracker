import 'package:intl/intl.dart';

String muslimSalatApi = 'https://muslimsalat.p.rapidapi.com/';

enum HomeStatus {
  loading,
  loaded,
  error,
}

List<String> prayerNames = [
  'Subuhi',
  'Duhar',
  'Asar',
  'Magrib',
  'Ishah',
  'Taraveeh'
];

// String formattedTime = DateFormat('h:mm a').format(DateTime.now());
int? day = 1;
DateTime now = DateTime.now();
String today = DateFormat('EEEE').format(DateTime.now());
String month = DateFormat.MMMM().format(DateTime.now());
String? currentAdress;
