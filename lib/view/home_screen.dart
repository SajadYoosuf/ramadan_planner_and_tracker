import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view%20model/home_functions.dart';
import 'package:ramadan_planner/widgets/button_container.dart';
import 'package:ramadan_planner/widgets/display_container.dart';
import 'package:ramadan_planner/widgets/image_display_container.dart';
import 'package:ramadan_planner/widgets/prayer_time_displaying.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final home = Provider.of<HomeFunctions>(context);
    home.getCurrentPrayerTimes(context);
    return Scaffold(
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
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 60,
            height: 150,
            decoration: BoxDecoration(
                // color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(currentDayDetailsBackgroundImage),
                    fit: BoxFit.fitWidth),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 10,
                // ),
                Text(
                  "Today",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "1st Ramadan 1446",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "${home.today},${home.now.month} ${home.month} ${home.now.year}" ??
                      '',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    displayContainer(context,
                        '${home.prayerTimeDetails[0].magribTime}pm' ?? ''),
                    displayContainer(context,
                        '${home.prayerTimeDetails[0].morningFoodTime}pm')
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(categoryContainerBackgroundImage),
                    fit: BoxFit.fitWidth)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageDisplayContainer(context, manPrayer, 'Prayer'),
                    imageDisplayContainer(context, dikrImage, 'Tasbih'),
                    imageDisplayContainer(context, duaImage, 'Dua'),
                    imageDisplayContainer(context, quranImage, 'Quran')
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage(tasbeeh), fit: BoxFit.fitWidth)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Start Your Day To Count\n            Tasbeeh",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22)),
                    child: Center(
                      child: Text("Get started"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ramadanPrayer), fit: BoxFit.fitWidth),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Prayer time",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "${home.today},${home.now.month} ${home.month} ${home.now.year}" ??
                        '',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Row(
                  children: [
                    buttonContainer(context, 'Today', 1),
                    buttonContainer(context, '30 days', 2),
                  ],
                ),
                if (home.currentIndex == 1)
                  Column(
                    children: [
                      Text(
                        "One feature coming soon",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        home.formattedTime,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          prayerTimeDisplaying(
                            context,
                            'Fajir',
                            home.prayerTimeDetails[0].subuhiTime ?? '',
                          ),
                          prayerTimeDisplaying(
                            context,
                            'Duhar',
                            home.prayerTimeDetails[0].luharTime ?? "",
                          ),
                          prayerTimeDisplaying(
                            context,
                            'Asar',
                            home.prayerTimeDetails[0].asarTime ?? '',
                          ),
                          prayerTimeDisplaying(
                            context,
                            'Magrib',
                            home.prayerTimeDetails[0].magribTime ?? "",
                          ),
                          prayerTimeDisplaying(
                            context,
                            'Ishah',
                            home.prayerTimeDetails[0].ishahTime ?? "",
                          )
                        ],
                      )
                    ],
                  )
                else if (home.currentIndex == 2)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text("This Feature coming soon")],
                  )
              ],
            ),
          )
        ])));
  }
}
