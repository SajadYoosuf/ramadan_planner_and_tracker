  import 'package:flutter/material.dart';

Widget buildPrayerTimeCard(String prayerTime) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: ListTile(
        title: Text(prayerTime),
        trailing: Icon(
          Icons.close,
          color: Colors.red,
        ),
      ),
    );
  }