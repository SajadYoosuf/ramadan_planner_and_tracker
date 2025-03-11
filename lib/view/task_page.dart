import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/task_view_model.dart';
import 'package:ramadan_planner/widgets/prayer_task_row.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskViewmodel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back)),
          title: Text(
            "My Tasks",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Prayer Times",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            prayerTaskRow(context, "Fajir", ""),
            SizedBox(
              height: 20,
            ),
            prayerTaskRow(context, 'Dhuhr', ''),
            SizedBox(
              height: 20,
            ),
            prayerTaskRow(context, 'Asar', ''),
            SizedBox(
              height: 20,
            ),
            prayerTaskRow(context, 'Magrib', ''),
            SizedBox(
              height: 20,
            ),
            prayerTaskRow(context, 'Ishah', ''),
            SizedBox(
              height: 20,
            ),
            prayerTaskRow(context, 'Taraveeh', ''),
            SizedBox(
              height: 20,
            ),
            prayerTaskRow(context, 'Tahajjud', ''),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Other Tasks",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 189, 186, 186)),
                      child: Center(
                        child: Icon(
                          Icons.done,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Positioned(
                    left: 85,
                    top: 15,
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 200), // Keeps width fixed
                      width: 200,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true, // Uses full width properly
                          value: value.initalDikr,
                          icon: const Icon(Icons
                              .keyboard_arrow_down), // Keeps the dropdown icon on the right

                          items: value.ramadanDikr.map((items) {
                            return DropdownMenuItem(
                              value: items.dikrName,
                              child: Container(
                                height: 300,
                                child: Text(
                                  items.dikrName!,
                                  softWrap: true, // Ensures multi-line display
                                  maxLines: 3, // No line limit
                                ),
                              ),
                            );
                          }).toList(),

                          onChanged: (String? newValue) {
                            value.dikrChanging(newValue!);
                          },
                          menuMaxHeight: 200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
