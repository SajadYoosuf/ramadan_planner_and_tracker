import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view/task_page.dart';
import 'package:ramadan_planner/widgets/navigation_column.dart';
import 'package:ramadan_planner/widgets/prayer_times.dart';
import 'package:ramadan_planner/widgets/task_progress.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/homeimage.jpg"),
            fit: BoxFit.cover,
          )),
          child: Stack(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.values[3],
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "04:41",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Fajr 3 hour 9 min left",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '6 Ramadan, 1446',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Inkel City - Malappuram',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        prayerTime(context, 'Fajr', fajricon, '04:56'),
                        prayerTime(context, 'Dhuhr', dhuhricon, '04:56'),
                        prayerTime(context, 'Asr', asricon, '04:56'),
                        prayerTime(context, 'Maghrib', maghribicon, '04:56'),
                        prayerTime(context, 'ISha', ishaicon, '04:56'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.80,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(125),
                          border: Border.all(color: Colors.white)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Today Tasks',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TaskPage())))
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 270),
                        child: Column(children: [
                          Text(
                            'Today',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                    SizedBox(
                      height: 10,
                    ),
                    taskProgress(context, 'Prayer', 10),
                    SizedBox(
                      height: 8,
                    ),
                    taskProgress(context, 'Dhikr', 10),
                    SizedBox(
                      height: 8,
                    ),
                    taskProgress(context, 'Quran', 10),
                  ]),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      navigationColumn(context, Icons.home, 'Home', 0),
                      navigationColumn(
                          context, Icons.leaderboard, 'LeaderBoard', 0),
                      navigationColumn(context, Icons.schedule, 'Schedule', 0),
                      navigationColumn(context, Icons.person, 'Profile', 0)
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
