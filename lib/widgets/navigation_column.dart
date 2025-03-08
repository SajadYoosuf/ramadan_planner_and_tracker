import 'package:flutter/material.dart';

Column navigationColumn(BuildContext context,IconData icon,String screenName,int index){
  return Column(
                  children: [
                    IconButton(onPressed: ()=>null, icon: Icon(icon,color: Colors.greenAccent,)),
                    Text(screenName,style: TextStyle(color: Colors.white),)
                  ],
                );
}