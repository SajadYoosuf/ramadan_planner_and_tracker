import 'package:flutter/material.dart';
import 'package:ramadan_planner/utilities/images.dart';

Container tasbeehIntroWidget(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.90,
    height: 150,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image:
            DecorationImage(image: AssetImage(tasbeeh), fit: BoxFit.fitWidth)),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              "Start Your Daily Task ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
        SizedBox(
          height: 20,
        ),
        InkWell(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 28,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(22)),
            child: Center(
              child: Text("Get started"),
            ),
          ),
        ),
      ],
    ),
  );
}
