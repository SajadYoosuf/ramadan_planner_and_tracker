import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/utilities/constant.dart';
import 'package:ramadan_planner/utilities/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
        ])));
  }
}
