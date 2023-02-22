import 'package:flutter/material.dart';

class ActorDetail extends StatelessWidget {
  final String name, imgurl;
  ActorDetail({
    required this.name,
    required this.imgurl
  });

  

  @override
  Widget build(BuildContext context) {
    final newheight = MediaQuery.of(context).size.height;
     final newwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: newwidth,
        child: Column( children: 
        [
              Padding(
                padding:  EdgeInsets.only(top: newheight *0.1),
                child: CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage(imgurl),
                
                ),
              ),
                SizedBox(height: newheight * 0.05,),
                Text(name, style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}