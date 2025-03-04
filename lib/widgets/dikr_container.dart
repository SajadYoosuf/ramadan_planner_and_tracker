import 'package:flutter/material.dart';
import 'package:ramadan_planner/widgets/textField_container.dart';

Row dikrDisplay(BuildContext context, String dikrName, double count) {
  return Row(
    children: [
      Text(
        dikrName,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 40,
      ),
      textFieldContainer(context),
    ],
  );
}
