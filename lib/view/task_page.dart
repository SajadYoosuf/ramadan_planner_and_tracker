import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/view%20model/task_view_model.dart';
import 'package:ramadan_planner/widgets/prayer_task_row.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskViewmodel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff060911),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back,color: Colors.white,)),
          title: Text(
            "My Tasks",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
          centerTitle: true,
        ),

        body:
         SingleChildScrollView(
           child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(taskPage),fit: BoxFit.fitHeight)),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Prayer Times",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
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
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Other Tasks",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
                  ),
                ),
                SizedBox(

                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                    
                   
                      Positioned(
                        left: 90,
                        top: 15,
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Colors.white),
                          height: 90,width: 280,                      child: DropdownButton(
                            itemHeight: 90,
                            isExpanded: true, // Uses full width properly
                            value: value.initalDikr,
                            icon: const Icon(Icons
                                .keyboard_arrow_down,color: Colors.black,), // Keeps the dropdown icon on the right
                                   
                            items: value.ramadanDikr.map((items) {
                              return DropdownMenuItem(
                                
                                value: items.dikrName,
                                child: Text(
                                  items.dikrName!,
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                  softWrap: true, // Ensures multi-line display
                                  maxLines: 3, // No line limit
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
Positioned(child: Container(width:50,height: 50,child:  Image.asset(dikrBg)))                    ],
                  ),
                ),
              ],
                     ),
           ),
         ),
      ),
    );
  }
}
