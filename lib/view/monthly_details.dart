import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/task_view_model.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MonthlyProgress extends StatelessWidget {
  const MonthlyProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final value=Provider.of<TaskViewmodel>(context);
    return Scaffold(
     
      appBar: AppBar(
        leading:IconButton(onPressed:null, icon: Icon(Icons.arrow_back)),
        
        title: Text(
          "Monthly Progress",
          style: TextStyle(color:  Colors.black),
        ),
     
      ),
      body: Column(
   mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: SfCalendar(
              cellBorderColor: Colors.black,//border color
              viewNavigationMode: ViewNavigationMode.snap,
              showNavigationArrow: true,
              view: CalendarView.month,
              //week
              viewHeaderStyle: ViewHeaderStyle(
                backgroundColor: Colors.blueGrey,
                dayTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              monthViewSettings: MonthViewSettings(
                
                navigationDirection: MonthNavigationDirection.vertical,
                showAgenda: false,
                monthCellStyle: MonthCellStyle(
                  trailingDatesBackgroundColor: Colors.blue,
                  backgroundColor: Color(0xFF293462),
                  todayBackgroundColor: Color(0xFF293462),
                  leadingDatesBackgroundColor: Colors.blue,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ),
          ),
      
       Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Daily Monitoring',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                     
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: 
                            Container(
                              height: 200,
                              margin: EdgeInsets.symmetric(vertical: 20),
                              width: MediaQuery.of(context).size.width * 0.80,
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.green),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        ' Dhikr',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 300,
                                    child: ListView.separated(
                                      itemCount: value.ramadanDikr.length,
                                      separatorBuilder: (context, index) =>
                                          Divider(),
                                      itemBuilder: (context, index) =>
                                          Container(
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Text(value
                                                    .ramadanDikr[index]
                                                    .dikrName!)),
                                            Text(value
                                                .ramadanDikr[index].count
                                                .toString())
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("Quran",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      Text("Pages:99",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                     SizedBox(height: 10,),
                           
                          ],
                        ),
                      ),
      )],
      ),
    );
  }
}