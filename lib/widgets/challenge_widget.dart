import 'package:flutter/material.dart';

ListTile challengeWidget(BuildContext context,String title,String subtitle){
  return  ListTile(
                        
                        title:  Text(
                                title,
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                          subtitle: Text(
                          subtitle,
                           style: TextStyle(color: Colors.black, fontSize: 15,fontWeight:FontWeight.bold),
                                                        ), 
                      
                      );
}