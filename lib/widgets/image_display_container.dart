import 'package:flutter/material.dart';

InkWell imageDisplayContainer(
    BuildContext context, String image, String title) {
  return InkWell(
      onTap: () => false,
      child: Container(
        width: 70,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(11)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                image,
                width: 40,
                height: 40,
                fit: BoxFit.fitHeight,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ));
}
