import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/get_prayer_time.dart';
import 'package:ramadan_planner/widgets/dikr_task_container.dart';
import 'package:ramadan_planner/widgets/niskaram_task.dart';
import 'package:ramadan_planner/widgets/quran_container.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails(
      {super.key,
      required this.title,
      required this.image,
      required this.index});
  final String? title;
  final String? image;
  final int? index;

  @override
  Widget build(BuildContext context) {
    final home = Provider.of<GetPrayerTime>(context);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
              )),
          title: Text("Today $title Task"),
        ),
        body: Column(
          children: [
            if (index == 0)
              niskaramTask(context, title!)
            else if (index == 1)
              dikrTaskContainer(context)
            else if (index == 2)
              quranTask(context),
          ],
        ));
  }
}
