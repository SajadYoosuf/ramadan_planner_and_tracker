import 'package:flutter/material.dart';

SizedBox textFieldContainer(BuildContext context) {
  return SizedBox(
    width: 75,
    height: 40,
    child: TextField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'count'),
    ),
  );
}
