import 'package:flutter/material.dart';
import 'package:ramadan_planner/utilities/images.dart';
import 'package:ramadan_planner/widgets/image_display_container.dart';

Container taskDisplayingContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 150,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(categoryContainerBackgroundImage),
            fit: BoxFit.fitWidth)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Category",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            imageDisplayContainer(context, manPrayer, 'Prayer', 0),
            imageDisplayContainer(context, dikrImage, 'Tasbih', 1),
            imageDisplayContainer(context, quranImage, 'Quran', 2)
          ],
        )
      ],
    ),
  );
}
