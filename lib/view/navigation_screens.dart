import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/navigation.dart';
import 'package:ramadan_planner/widgets/navigation_column.dart';

class NavigationScreens extends StatelessWidget {
  const NavigationScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final navigation = Provider.of<Navigation>(context);
    return Scaffold(
      body: navigation.pageList[navigation.currentPageIndex],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 68,
        color: Colors.green[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navigationColumn(context, 0, 'Home',Icons.home),
            navigationColumn(context, 1, 'Monitor',Icons.leaderboard),
           navigationColumn(context, 2, 'Schedule',Icons.schedule),
           navigationColumn(context, 3, 'Settings',Icons.settings)
          
          ],
        ),
      ),
    );
  }
}
