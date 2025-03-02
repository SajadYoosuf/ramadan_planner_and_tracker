import 'package:flutter/material.dart';

Container displayContainer(BuildContext context, String time) {
  return Container(
    width: 150,
    height: 50,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(25)),
    child: Center(
      child: Text("Iftar time- $time"),
    ),
  );
}
