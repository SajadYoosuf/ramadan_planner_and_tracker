import 'package:flutter/material.dart';
import 'package:ramadan_planner/view/home_screen.dart';
import 'package:ramadan_planner/view/monitoring_screen.dart';
import 'package:ramadan_planner/view/schedule_screen.dart';
import 'package:ramadan_planner/view/settings_screen.dart';

class Navigation extends ChangeNotifier {
  int currentPageIndex = 0;
  List<Widget> pageList = [HomeScreen(),MonitoringScreen(),ScheduleScreen(),SettingsScreen()];

  void navigationChange(int index) {
    currentPageIndex = index;
    notifyListeners();
  }
}
