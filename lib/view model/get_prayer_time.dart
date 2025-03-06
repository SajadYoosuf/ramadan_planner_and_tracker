import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

import 'package:ramadan_planner/model/prayer_times.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetPrayerTime extends ChangeNotifier {

  int currentIndex = 1;
  List<PrayerTime> prayerTimes = [
    PrayerTime(
        day: 2,
        date: "Sun",
        fajr: "05:28 AM",
        dhuhr: "12:37 PM",
        asr: "03:56 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 3,
        date: "Mon",
        fajr: "05:28 AM",
        dhuhr: "12:36 PM",
        asr: "03:56 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 4,
        date: "Tue",
        fajr: "05:27 AM",
        dhuhr: "12:36 PM",
        asr: "03:56 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 5,
        date: "Wed",
        fajr: "05:27 AM",
        dhuhr: "12:36 PM",
        asr: "03:55 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 6,
        date: "Thu",
        fajr: "05:26 AM",
        dhuhr: "12:36 PM",
        asr: "03:55 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 7,
        date: "Fri",
        fajr: "05:26 AM",
        dhuhr: "12:35 PM",
        asr: "03:54 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 8,
        date: "Sat",
        fajr: "05:25 AM",
        dhuhr: "12:35 PM",
        asr: "03:54 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 9,
        date: "Sun",
        fajr: "05:25 AM",
        dhuhr: "12:35 PM",
        asr: "03:53 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 10,
        date: "Mon",
        fajr: "05:24 AM",
        dhuhr: "12:35 PM",
        asr: "03:53 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 11,
        date: "Tue",
        fajr: "05:24 AM",
        dhuhr: "12:34 PM",
        asr: "03:52 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 12,
        date: "Wed",
        fajr: "05:23 AM",
        dhuhr: "12:34 PM",
        asr: "03:52 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 13,
        date: "Thu",
        fajr: "05:23 AM",
        dhuhr: "12:34 PM",
        asr: "03:51 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 14,
        date: "Fri",
        fajr: "05:22 AM",
        dhuhr: "12:34 PM",
        asr: "03:51 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 15,
        date: "Sat",
        fajr: "05:22 AM",
        dhuhr: "12:33 PM",
        asr: "03:50 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 16,
        date: "Sun",
        fajr: "05:21 AM",
        dhuhr: "12:33 PM",
        asr: "03:50 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 17,
        date: "Mon",
        fajr: "05:20 AM",
        dhuhr: "12:33 PM",
        asr: "03:49 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 18,
        date: "Tue",
        fajr: "05:20 AM",
        dhuhr: "12:33 PM",
        asr: "03:49 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 19,
        date: "Wed",
        fajr: "05:19 AM",
        dhuhr: "12:32 PM",
        asr: "03:48 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 20,
        date: "Thu",
        fajr: "05:19 AM",
        dhuhr: "12:32 PM",
        asr: "03:47 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 21,
        date: "Fri",
        fajr: "05:18 AM",
        dhuhr: "12:32 PM",
        asr: "03:47 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 22,
        date: "Sat",
        fajr: "05:17 AM",
        dhuhr: "12:31 PM",
        asr: "03:46 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 23,
        date: "Sun",
        fajr: "05:17 AM",
        dhuhr: "12:31 PM",
        asr: "03:45 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 24,
        date: "Mon",
        fajr: "05:16 AM",
        dhuhr: "12:31 PM",
        asr: "03:45 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 25,
        date: "Tue",
        fajr: "05:16 AM",
        dhuhr: "12:30 PM",
        asr: "03:44 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 26,
        date: "Wed",
        fajr: "05:15 AM",
        dhuhr: "12:30 PM",
        asr: "03:43 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 27,
        date: "Thu",
        fajr: "05:14 AM",
        dhuhr: "12:30 PM",
        asr: "03:43 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 28,
        date: "Fri",
        fajr: "05:14 AM",
        dhuhr: "12:30 PM",
        asr: "03:42 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 29,
        date: "Sat",
        fajr: "05:13 AM",
        dhuhr: "12:29 PM",
        asr: "03:41 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
    PrayerTime(
        day: 30,
        date: "Sun",
        fajr: "05:13 AM",
        dhuhr: "12:29 PM",
        asr: "03:40 PM",
        maghrib: "06:35 PM",
        isha: "07:45 PM"),
  ];
  Future<void> getCurrentPrayerTimes() async {

  }

  void changePrayerTimeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
