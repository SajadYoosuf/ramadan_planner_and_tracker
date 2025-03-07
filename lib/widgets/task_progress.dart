import 'package:flutter/material.dart';

Padding taskProgress(BuildContext context,String taskCategory,double percentage){
  return Padding(
              padding:  EdgeInsets.only(left:37),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                    taskCategory,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                                      ),
                  Stack(
                    children: [
                      Container(
                        width: 300,
                        height: 20,
                        decoration: BoxDecoration(
                          color:Colors.transparent,
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Colors.white)
                        ),
                       
                      ),
                      Container(
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                          color:Colors.green,
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Colors.white)
                        ),
                      )
                    ],
                  ),
                              Text("$percentage% Completed",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)

                ],
              ),
            );
}