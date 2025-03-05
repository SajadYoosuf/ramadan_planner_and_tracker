import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/model/prayer_times.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';
import 'package:ramadan_planner/widgets/button_container.dart';
import 'package:ramadan_planner/widgets/prayer_time_displaying.dart';

Container todayPrayerTimes(BuildContext context, PrayerTime snapshot) {
  final home = Provider.of<GetPrayerTime>(context);
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 215,
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
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "$today,${now.month} $month ${now.year}" ?? '',
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
              // Text(
              //   formattedTime,
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold),
              // ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  prayerTimeDisplaying(
                    context,
                    'Fajir',
                    snapshot.fajr ?? '',
                  ),
                  prayerTimeDisplaying(
                    context,
                    'Duhar',
                    snapshot.dhuhr ?? "",
                  ),
                  prayerTimeDisplaying(
                    context,
                    'Asar',
                    snapshot.asr ?? '',
                  ),
                  prayerTimeDisplaying(
                    context,
                    'Magrib',
                    snapshot.maghrib ?? "",
                  ),
                  prayerTimeDisplaying(
                    context,
                    'Ishah',
                    snapshot.isha ?? "",
                  )
                ],
              )
            ],
          )
        else if (home.currentIndex == 2)
          Column(
            children: [
              // GridView.builder(
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 5,
              //     ),
              //     itemCount: 300,
              //     itemBuilder: (BuildContext context, int index) {
              //       return prayerTimeDisplaying(context, home.prayerTimes[index]., prayerTime)
              //     }),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22)),
                        child: Center(
                          child: Text(
                            "${home.prayerTimes[index].day}st ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      prayerTimeDisplaying(
                        context,
                        'Fajir',
                        home.prayerTimes[index].fajr ?? '',
                      ),
                      prayerTimeDisplaying(
                        context,
                        'Duhar',
                        home.prayerTimes[index].dhuhr ?? "",
                      ),
                      prayerTimeDisplaying(
                        context,
                        'Asar',
                        home.prayerTimes[index].asr ?? '',
                      ),
                      prayerTimeDisplaying(
                        context,
                        'Magrib',
                        home.prayerTimes[index].maghrib ?? "",
                      ),
                      prayerTimeDisplaying(
                        context,
                        'Ishah',
                        home.prayerTimes[index].isha ?? "",
                      )
                    ],
                  ),
                  itemCount: home.prayerTimes.length,
                ),
              )
            ],
          )
      ],
    ),
  );
}
