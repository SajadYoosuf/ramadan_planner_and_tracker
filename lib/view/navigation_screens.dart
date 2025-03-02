import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/navigation.dart';

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
        color: Color(0xff9f82c0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () => navigation.navigationChange(0),
                    icon: Icon(
                      Icons.home,
                      color: navigation.currentPageIndex == 0
                          ? Colors.white
                          : Colors.black,
                    )),
                Text(
                  "Home",
                  style: TextStyle(
                      color: navigation.currentPageIndex == 0
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () => navigation.navigationChange(1),
                    icon: Icon(
                      Icons.leaderboard,
                      color: navigation.currentPageIndex == 1
                          ? Colors.white
                          : Colors.black,
                    )),
                Text(
                  "Monitor",
                  style: TextStyle(
                      color: navigation.currentPageIndex == 1
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () => navigation.navigationChange(2),
                    icon: Icon(
                      Icons.pending_actions,
                      color: navigation.currentPageIndex == 2
                          ? Colors.white
                          : Colors.black,
                    )),
                Text(
                  "Shedule",
                  style: TextStyle(
                      color: navigation.currentPageIndex == 2
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () => navigation.navigationChange(3),
                    icon: Icon(
                      Icons.settings,
                      color: navigation.currentPageIndex == 3
                          ? Colors.white
                          : Colors.black,
                    )),
                Text(
                  "Settings",
                  style: TextStyle(
                      color: navigation.currentPageIndex == 3
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
