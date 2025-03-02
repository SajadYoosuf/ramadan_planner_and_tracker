import 'package:flutter/material.dart';

Container prayerTimeDisplaying(
    BuildContext context, String prayerName, String? prayerTime) {
  return Container(
    width: 50,
    height: 40,
    color: Colors.white,
    child: Column(
      children: [Text(prayerName), Text(prayerTime ?? '')],
    ),
  );
}
