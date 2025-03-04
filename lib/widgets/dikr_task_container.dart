import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';
import 'package:ramadan_planner/widgets/dikr_container.dart';

SizedBox dikrTaskContainer(BuildContext context) {
  final home = Provider.of<GetPrayerTime>(context);
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.88,
    child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: 29,
        itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border(
                    left: BorderSide(
                      width: 5,
                      color: Colors.black,
                    ),
                    right: BorderSide(width: 1, color: Colors.black),
                    top: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('${(home.prayerTimes[index].day - 1).toString()}st Day'),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.62,
                      height: 300,
                      decoration: BoxDecoration(
                          border: Border(
                        left: BorderSide(
                          width: 5,
                          color: Colors.black,
                        ),
                        right: BorderSide(width: 5, color: Colors.black),
                        top: BorderSide(width: 5, color: Colors.black),
                        bottom: BorderSide(width: 5, color: Colors.black),
                      )),
                      child: Column(
                        children: [
                          dikrDisplay(context, 'subhanallah', 0),
                          dikrDisplay(context, 'Swalath', 0),
                          dikrDisplay(context, 'Allahu Akbar', 0)
                        ],
                      ))
                ],
              ),
            )),
  );
}
