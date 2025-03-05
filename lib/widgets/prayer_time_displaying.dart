import 'package:flutter/material.dart';

Container prayerTimeDisplaying(
    BuildContext context, String prayerName, String? prayerTime) {
  return Container(
    width: 50,
    height: 40,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22), color: Colors.white),
    child: Column(
      children: [
        Text(
          prayerName,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        Text(prayerTime!,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))
      ],
    ),
  );
}
