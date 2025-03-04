import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';

Container quranTask(BuildContext context) {
  final home = Provider.of<GetPrayerTime>(context);
  return Container(
    width: MediaQuery.of(context).size.width * 0.95,
    // decoration: BoxDecoration(
    //     border: Border(
    //   left: BorderSide(
    //     width: 5,
    //     color: Colors.black,
    //   ),
    //   right: BorderSide(width: 5, color: Colors.black),
    //   top: BorderSide(width: 5, color: Colors.black),
    //   bottom: BorderSide(width: 5, color: Colors.black),
    // )),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.87,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: home.prayerTimes.length,
          itemBuilder: (context, index) => Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border(
                      left: BorderSide(
                        width: 5,
                        color: Colors.black,
                      ),
                      right: BorderSide(width: 5, color: Colors.black),
                      top: BorderSide(width: 5, color: Colors.black),
                      bottom: BorderSide(width: 5, color: Colors.black),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        '${(home.prayerTimes[index].day - 1).toString()}st Day'),
                    Column(
                      children: [
                        Text('Pages'),
                        Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border(
                              left: BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                              right: BorderSide(width: 1, color: Colors.black),
                              top: BorderSide(width: 1, color: Colors.black),
                              bottom: BorderSide(width: 1, color: Colors.black),
                            )),
                            child: TextField(
                              decoration: InputDecoration(),
                            )),
                      ],
                    )
                  ],
                ),
              )),
    ),
  );
}
