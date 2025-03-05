import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/model/prayer_times.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';
import 'package:ramadan_planner/view%20model/navigation.dart';
import 'package:ramadan_planner/view%20model/task_add.dart';
import 'package:ramadan_planner/view/navigation_screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Hive.initFlutter();
  // Hive.registerAdapter(PrayerTimeAdapter());
  // Hive.registerAdapter(TodayWeatherAdapter());
  // Hive.registerAdapter(ItemAdapter());

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<Navigation>(create: (_) => Navigation()),
    ChangeNotifierProvider<GetPrayerTime>(
      create: (_) => GetPrayerTime()..getCurrentPrayerTimes(),
    ),
    ChangeNotifierProvider<TaskAdd>(
        create: (_) => TaskAdd()..valueintialization())
  ], child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<HomeFunctions>(context);
    // provider.getCurrentPrayerTimes(context);
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: NavigationScreens());
  }
}
