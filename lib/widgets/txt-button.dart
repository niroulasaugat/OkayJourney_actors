import 'package:flutter/material.dart';

Widget Txtfield( TextEditingController ctr, String label) {
    return TextField(
            controller: ctr,
            
            decoration: InputDecoration(
              border:OutlineInputBorder(),
              labelText: label ),
             );
  }



Widget newbutton(BuildContext context) {
    return Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                
              ),
              child: Center(child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),)),
            );
  }


