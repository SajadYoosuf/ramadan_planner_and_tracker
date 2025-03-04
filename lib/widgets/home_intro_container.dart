import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/model/prayer_times.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';
import 'package:ramadan_planner/widgets/display_container.dart';

Container homeIntroContainer(BuildContext context, PrayerTime snapshot) {
  final home = Provider.of<GetPrayerTime>(context);
  return Container(
    width: MediaQuery.of(context).size.width * 60,
    height: 150,
    decoration: BoxDecoration(
        // color: Colors.black,
        image: DecorationImage(
            image: AssetImage(currentDayDetailsBackgroundImage),
            fit: BoxFit.fitWidth),
        borderRadius: BorderRadius.circular(25)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SizedBox(
        //   height: 10,
        // ),
        Text(
          "Today",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        Text(
          "${now.day - 1}st Ramadan 1446",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "$today,${now.day} $month ${now.year}" ?? '',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            displayContainer(context, snapshot.fajr ?? '', 'Fajir'),
            displayContainer(context, snapshot.maghrib ?? '', 'Iftar')
          ],
        )
      ],
    ),
  );
}
