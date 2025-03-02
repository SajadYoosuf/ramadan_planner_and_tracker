import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/home_functions.dart';

Widget buttonContainer(BuildContext context, String title, int index) {
  final home = Provider.of<HomeFunctions>(context);
  return GestureDetector(
    onTap: () {
      home.changeButton(index);
      print("object");
    },
    child: Container(
      width: 150,
      height: 30,
      color: home.currentIndex == index ? Colors.white : null,
      child: Center(
        child: Text(title),
      ),
    ),
  );
}
