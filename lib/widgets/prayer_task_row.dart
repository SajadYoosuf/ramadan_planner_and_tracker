import 'package:flutter/material.dart';

SizedBox prayerTaskRow(BuildContext context, String prayerName, String time) {
  return SizedBox(
    height: 50,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: [
        SizedBox(
          width: 10,
        ),
        Positioned(
          left: 10,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Center(
              child: Icon(
                Icons.timer_sharp,
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
          top: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$prayerName $time",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.width * 0.85,
            top: 10,
            child: Icon(Icons.check_box_outline_blank,color: Colors.white,)),
      ],
    ),
  );
}
