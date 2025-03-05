import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';
import 'package:ramadan_planner/view%20model/task_add.dart';

Widget niskaramTask(BuildContext context, String title) {
  return Consumer<TaskAdd>(
    builder: (context, task, child) {
      task.prayerTaskbool[0] = task.prayerTaskDetails[0].fajirCompleted;
      task.prayerTaskbool[1] = task.prayerTaskDetails[0].duharCompleted;
      task.prayerTaskbool[2] = task.prayerTaskDetails[0].asarCompleted;
      task.prayerTaskbool[3] = task.prayerTaskDetails[0].magribCompleted;
      task.prayerTaskbool[4] = task.prayerTaskDetails[0].ishahCompleted;
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.88,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: prayerNames.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              print("object");
              print(index);
              task.prayerTask(index);
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 200,
              decoration: BoxDecoration(
                color: task.prayerTaskbool[index] ? Colors.blue : null,
                borderRadius: BorderRadius.circular(22),
                border: Border(
                  top: BorderSide(width: 5.0, color: Colors.black),
                  left: BorderSide(width: 5.0, color: Colors.black),
                  right: BorderSide(width: 5.0, color: Colors.black),
                  bottom: BorderSide(width: 5.0, color: Colors.black),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      manPrayer,
                      width: 120,
                      height: 120,
                      fit: BoxFit.fitHeight,
                    ),
                    Text(
                      prayerNames[index],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
