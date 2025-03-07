import 'package:flutter/material.dart';

Column prayerTime(BuildContext context,String prayerName,String prayerIcon,String prayerTime){
  return   Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(prayerName,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Image.asset(prayerIcon,color: Colors.white,height: 40,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(prayerTime,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.bold ),),
                          )
                        ],

                      );
}