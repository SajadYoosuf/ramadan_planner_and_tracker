import 'dart:io';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/task_view_model.dart';
import 'package:ramadan_planner/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ramadan_planner/view/login_screen.dart';
import 'package:ramadan_planner/view/profile_page.dart';
import 'package:ramadan_planner/view/task_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<TaskViewmodel>(
          create: (context) => TaskViewmodel()),
    ],
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ProfilePage());
  }
}
