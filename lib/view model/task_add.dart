import 'package:flutter/material.dart';
import 'package:ramadan_planner/model/prayer_task.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';

class TaskAdd extends ChangeNotifier {
  List<PrayerTask> prayerTaskDetails = [];
  List<bool> prayerTaskbool = [false, false, false, false, false, false];
  GetPrayerTime prayerTime = GetPrayerTime();
  void valueintialization() {
    prayerTaskDetails[0].fajirCompleted = false;
    print("${prayerTaskDetails[0].fajirCompleted}fowfiojfo");
    print("object");

    prayerTaskDetails[0].duharCompleted = false;
    prayerTaskDetails[0].asarCompleted = false;
    prayerTaskDetails[0].magribCompleted = false;
    prayerTaskDetails[0].ishahCompleted = false;
    prayerTaskDetails[0].taraveehCompleted = false;

    notifyListeners();
  }

  void prayerTask(int index) {
    // prayerTime.getCurrentPrayerTimes();
    print(now.day - 1);

    switch (index) {
      case 0:
        prayerTaskDetails[0].fajirCompleted = true;
        break;
      case 1:
        prayerTaskDetails[0].duharCompleted = true;
        prayerTaskbool[1] = true;

        break;
      case 2:
        prayerTaskDetails[0].asarCompleted = true;
        prayerTaskbool[2] = true;

        break;
      case 3:
        prayerTaskDetails[0].magribCompleted = true;
        prayerTaskbool[3] = true;

        break;
      case 4:
        prayerTaskDetails[0].ishahCompleted = true;
        prayerTaskbool[4] = true;

        break;
      case 5:
        prayerTaskDetails[0].taraveehCompleted = true;
        prayerTaskbool[5] = true;

        break;
      default:
    }
    notifyListeners();
  }
}
