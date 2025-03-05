// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:ramadan_planner/model/prayer_times.dart';
// import 'package:ramadan_planner/utilities/constant.dart';

// class MuslimSalatServices {
//   Future<PrayerTime?> fetchPrayerTimes(String currentAdress) async {
//     try {
//       final url = Uri.parse('$muslimSalatApi/$currentAdress.json');
//       final response = await http.get(url, headers: {
//         'x-rapidapi-key': 'fa1e134807msh7db3c185f348abbp166e6cjsn96c33a712066',
//         'x-rapidapi-host': ' muslimsalat.p.rapidapi.com',
//         'Content-Type': 'application/json'
//       });
//       if (response.statusCode == 200) {
//         // If the server did return a 200 OK response,
//         // then parse the JSON.
//         return PrayerTime.fromJson(jsonDecode(response.body));
//       } else {
//         // If the server did not return a 200 OK response,
//         // then throw an exception.
//         throw Exception('Failed to load prayer times');
//       }
//     } catch (e) {
//       print(e);
//       throw Exception('Failed to load fetch times');
//     }
//   }
// }
