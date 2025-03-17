import 'package:flutter/material.dart';

Column navigationColumn(BuildContext context,IconData icon,String screenName,int index,Widget screen){
  return Column(
                  children: [
                    IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> screen)), icon: Icon(icon,color: Colors.greenAccent,)),
                    Text(screenName,style: TextStyle(color: Colors.white),)
                  ],
                );
}