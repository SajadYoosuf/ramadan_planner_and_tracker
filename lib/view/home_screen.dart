import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/model/prayer_times.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';
import 'package:ramadan_planner/widgets/button_container.dart';
import 'package:ramadan_planner/widgets/display_container.dart';
import 'package:ramadan_planner/widgets/home_intro_container.dart';
import 'package:ramadan_planner/widgets/image_display_container.dart';
import 'package:ramadan_planner/widgets/prayer_time_displaying.dart';
import 'package:ramadan_planner/widgets/tasbeeh_into_widget.dart';
import 'package:ramadan_planner/widgets/task_display_container.dart';
import 'package:ramadan_planner/widgets/today_prayer_times.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<PrayerTime>? future;
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    // final prayerTime = Provider.of<GetPrayerTime>(context, listen: false);

    // future = prayerTime.getCurrentPrayerTimes(context);
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GetPrayerTime>(
        builder: (context, home, child) => Scaffold(
            backgroundColor: Color(0xff764ca5),
            appBar: AppBar(
              backgroundColor: Color(0xff764ca5),
              leading: Icon(
                Icons.face,
                color: Colors.white,
              ),
              automaticallyImplyLeading: false,
              title: Text(
                "HI",
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ),
              ],
            ),
            body: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                height: 10,
              ),
              homeIntroContainer(
                  context, home.prayerTimes[home.indexForprayertimes]),
              SizedBox(
                height: 10,
              ),
              taskDisplayingContainer(context),
              SizedBox(
                height: 10,
              ),
              // tasbeehIntroWidget(context),
              SizedBox(
                height: 30,
              ),
              todayPrayerTimes(
                  context, home.prayerTimes[home.indexForprayertimes]),
            ]))));
  }
}
