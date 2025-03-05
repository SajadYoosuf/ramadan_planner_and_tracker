import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';

Widget buttonContainer(BuildContext context, String title, int index) {
  final home = Provider.of<GetPrayerTime>(context);
  return GestureDetector(
    onTap: () {
      home.changePrayerTimeIndex(index);
      print("object");
    },
    child: Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 30,
      color: home.currentIndex == index ? Colors.white : null,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: home.currentIndex == index ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    ),
  );
}
