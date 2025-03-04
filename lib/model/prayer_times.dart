// import 'package:hive/hive.dart';
// import 'dart:convert';
// part 'prayer_times.g.dart';

// @HiveType(typeId: 0)
// class PrayerTime {
//   @HiveField(0)
//   String title;

//   @HiveField(1)
//   String query;

//   @HiveField(2)
//   String prayerTimeFor;

//   @HiveField(3)
//   int method;

//   @HiveField(4)
//   String prayerMethodName;

//   @HiveField(5)
//   String daylight;

//   @HiveField(6)
//   String timezone;

//   @HiveField(7)
//   String mapImage;

//   @HiveField(8)
//   String sealevel;

//   @HiveField(9)
//   TodayWeather todayWeather;

//   @HiveField(10)
//   String link;

//   @HiveField(11)
//   String qiblaDirection;

//   @HiveField(12)
//   String latitude;

//   @HiveField(13)
//   String longitude;

//   @HiveField(14)
//   String address;

//   @HiveField(15)
//   String city;

//   @HiveField(16)
//   String state;

//   @HiveField(17)
//   String postalCode;

//   @HiveField(18)
//   String country;

//   @HiveField(19)
//   String countryCode;

//   @HiveField(20)
//   List<Item> items;

//   @HiveField(21)
//   int statusValid;

//   @HiveField(22)
//   int statusCode;

//   @HiveField(23)
//   String statusDescription;

//   PrayerTime({
//     required this.title,
//     required this.query,
//     required this.prayerTimeFor,
//     required this.method,
//     required this.prayerMethodName,
//     required this.daylight,
//     required this.timezone,
//     required this.mapImage,
//     required this.sealevel,
//     required this.todayWeather,
//     required this.link,
//     required this.qiblaDirection,
//     required this.latitude,
//     required this.longitude,
//     required this.address,
//     required this.city,
//     required this.state,
//     required this.postalCode,
//     required this.country,
//     required this.countryCode,
//     required this.items,
//     required this.statusValid,
//     required this.statusCode,
//     required this.statusDescription,
//   });

//   factory PrayerTime.fromRawJson(String str) =>
//       PrayerTime.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory PrayerTime.fromJson(Map<String, dynamic> json) => PrayerTime(
//         title: json["title"],
//         query: json["query"],
//         prayerTimeFor: json["for"],
//         method: json["method"],
//         prayerMethodName: json["prayer_method_name"],
//         daylight: json["daylight"],
//         timezone: json["timezone"],
//         mapImage: json["map_image"],
//         sealevel: json["sealevel"],
//         todayWeather: TodayWeather.fromJson(json["today_weather"]),
//         link: json["link"],
//         qiblaDirection: json["qibla_direction"],
//         latitude: json["latitude"],
//         longitude: json["longitude"],
//         address: json["address"],
//         city: json["city"],
//         state: json["state"],
//         postalCode: json["postal_code"],
//         country: json["country"],
//         countryCode: json["country_code"],
//         items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
//         statusValid: json["status_valid"],
//         statusCode: json["status_code"],
//         statusDescription: json["status_description"],
//       );

//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "query": query,
//         "for": prayerTimeFor,
//         "method": method,
//         "prayer_method_name": prayerMethodName,
//         "daylight": daylight,
//         "timezone": timezone,
//         "map_image": mapImage,
//         "sealevel": sealevel,
//         "today_weather": todayWeather.toJson(),
//         "link": link,
//         "qibla_direction": qiblaDirection,
//         "latitude": latitude,
//         "longitude": longitude,
//         "address": address,
//         "city": city,
//         "state": state,
//         "postal_code": postalCode,
//         "country": country,
//         "country_code": countryCode,
//         "items": List<dynamic>.from(items.map((x) => x.toJson())),
//         "status_valid": statusValid,
//         "status_code": statusCode,
//         "status_description": statusDescription,
//       };
// }

// @HiveType(typeId: 1)
// class Item {
//   @HiveField(0)
//   String dateFor;

//   @HiveField(1)
//   String fajr;

//   @HiveField(2)
//   String shurooq;

//   @HiveField(3)
//   String dhuhr;

//   @HiveField(4)
//   String asr;

//   @HiveField(5)
//   String maghrib;

//   @HiveField(6)
//   String isha;
//   Item({
//     required this.dateFor,
//     required this.fajr,
//     required this.shurooq,
//     required this.dhuhr,
//     required this.asr,
//     required this.maghrib,
//     required this.isha,
//   });
//   factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory Item.fromJson(Map<String, dynamic> json) => Item(
//         dateFor: json["date_for"],
//         fajr: json["fajr"],
//         shurooq: json["shurooq"],
//         dhuhr: json["dhuhr"],
//         asr: json["asr"],
//         maghrib: json["maghrib"],
//         isha: json["isha"],
//       );

//   Map<String, dynamic> toJson() => {
//         "date_for": dateFor,
//         "fajr": fajr,
//         "shurooq": shurooq,
//         "dhuhr": dhuhr,
//         "asr": asr,
//         "maghrib": maghrib,
//         "isha": isha,
//       };
// }

// @HiveType(typeId: 2)
// class TodayWeather {
//   @HiveField(0)
//   String pressure;

//   @HiveField(1)
//   String temperature;

//   TodayWeather({
//     required this.pressure,
//     required this.temperature,
//   });

//   factory TodayWeather.fromRawJson(String str) =>
//       TodayWeather.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory TodayWeather.fromJson(Map<String, dynamic> json) => TodayWeather(
//         pressure: json["pressure"],
//         temperature: json["temperature"],
//       );

//   Map<String, dynamic> toJson() => {
//         "pressure": pressure,
//         "temperature": temperature,
//       };
// }
class PrayerTime {
  final int day;
  final String date;
  final String fajr;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;

  PrayerTime({
    required this.day,
    required this.date,
    required this.fajr,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });
}
