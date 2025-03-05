import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramadan_planner/view%20model/navigation.dart';

Column navigationColumn(BuildContext context,int index,String screenName,IconData icon){
  final navigation=Provider.of<Navigation>(context);
  return Column(
              children: [
                IconButton(
                    onPressed: () => navigation.navigationChange(index),
                    icon: Icon(
                      icon,
                      color: navigation.currentPageIndex == index
                          ? Colors.white
                          : Colors.black,
                    )),
                Text(
                  screenName,
                  style: TextStyle(
                      color: navigation.currentPageIndex == index
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            );
}