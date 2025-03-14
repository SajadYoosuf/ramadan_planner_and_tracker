import 'package:flutter/material.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view/home_screen.dart';
import 'package:ramadan_planner/view/profile_page.dart';
import 'package:ramadan_planner/widgets/navigation_column.dart';

Container navigationWidget(BuildContext context){
  return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      navigationColumn(context, Icons.home, 'Home', 0,HomeScreen()),
                      navigationColumn(
                          context, Icons.leaderboard, 'LeaderBoard', 0,HomeScreen()),
                      navigationColumn(context, Icons.schedule, 'Schedule', 0,HomeScreen()),
                      navigationColumn(context, Icons.person, 'Profile', 0,ProfilePage())
                    ],
                  ),
                );
}