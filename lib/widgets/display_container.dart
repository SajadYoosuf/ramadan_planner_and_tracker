import 'package:flutter/material.dart';

Container displayContainer(BuildContext context, String time, String title) {
  return Container(
    width: 150,
    height: 50,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(25)),
    child: Center(
      child: Text("$title- $time"),
    ),
  );
}
