import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/widgets/prayer_times.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/homeimage.jpg"),
              fit: BoxFit.cover,
            )),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(right: 60, top: 85),
                child: Text(
                  "04:41",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  "Fajr 3 hour 9 min left",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  '6 Ramadan, 1446',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  'Inkel City - Malappuram',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  prayerTime(context, 'Fajr', fajricon, '04:56'),
                  prayerTime(context, 'Dhuhr', dhuhricon, '04:56'),
                  prayerTime(context, 'Asr', asricon, '04:56'),
                  prayerTime(context, 'Maghrib', maghribicon, '04:56'),
                  prayerTime(context, 'ISha', ishaicon, '04:56'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 365,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(125),
                    border: Border.all(color: Colors.white)),
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Text(
                      'Today Tasks',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  )
                ]),
              ),
              SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.only(right:  270),
                child: Column(
                  children: [
                    Text('Today',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Stack(
            children: <Widget>[
              Container(
                color: Color(0xffABEBC6),
                width: MediaQuery.of(context).size.width,
                height: 4,
              ),
              Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width * 0.2, // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                height: 4,
                   ) ],
                ),
             ] ) ) ])),
      );
  }
}
