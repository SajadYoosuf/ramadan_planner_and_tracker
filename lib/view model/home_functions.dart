import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:prayers_times/prayers_times.dart';
import 'package:ramadan_planner/model/prayer_times.dart';
import 'package:ramadan_planner/view%20model/current_location.dart';

class HomeFunctions extends ChangeNotifier {
  DateTime now = DateTime.now();
  String today = DateFormat('EEEE').format(DateTime.now());
  String month = DateFormat.MMMM().format(DateTime.now());
  List<PrayerTime> prayerTimeDetails = [];

  String formattedTime = DateFormat('jm').format(DateTime.now());
  int currentIndex = 1;

  Future<void> getCurrentPrayerTimes(BuildContext context) async {
    CurrentLocation location = CurrentLocation();
    await location.getCurrentPosition(context);
    await location.getAddressFromLatLng(location.currentPosition!.latitude,
        location.currentPosition!.longitude);
    print(location.currentPosition!.latitude);
    Coordinates coordinates = Coordinates(location.currentPosition!.latitude,
        location.currentPosition!.longitude);

    PrayerCalculationParameters params = PrayerCalculationMethod.other();
    params.madhab = PrayerMadhab.shafi;

    PrayerTimes prayerTimes = PrayerTimes(
        coordinates: coordinates,
        calculationParameters: params,
        locationName: location.currentAdress!);
    prayerTimeDetails[0].subuhiTime = prayerTimes.fajrStartTime.toString();

    prayerTimeDetails[0].luharTime = prayerTimes.dhuhrStartTime.toString();
    prayerTimeDetails[0].asarTime = prayerTimes.asrStartTime.toString();
    prayerTimeDetails[0].magribTime = prayerTimes.maghribStartTime.toString();
    prayerTimeDetails[0].ishahTime = prayerTimes.ishaStartTime.toString();
    prayerTimeDetails[0].morningFoodTime = prayerTimes.sehri.toString();
    prayerTimeDetails[0].taraveehTime = prayerTimes.ishaEndTime.toString();
    prayerTimeDetails[0].tahajudTime = prayerTimes.tahajjudEndTime.toString();
  }

  void changeButton(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
