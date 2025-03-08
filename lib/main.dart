import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Hive.initFlutter();
  // Hive.registerAdapter(PrayerTimeAdapter());
  // Hive.registerAdapter(TodayWeatherAdapter());
  // Hive.registerAdapter(ItemAdapter());

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<HomeFunctions>(context);
    // provider.getCurrentPrayerTimes(context);
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
