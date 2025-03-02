import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/home_functions.dart';
import 'package:ramadan_planner/view%20model/navigation.dart';
import 'package:ramadan_planner/view/navigation_screens.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<Navigation>(create: (_) => Navigation()),
    ChangeNotifierProvider<HomeFunctions>(create: (_) => HomeFunctions())
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
