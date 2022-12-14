import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Container(
          
          width: 350.0,
          height: 250.0,
          margin: EdgeInsets.all(50.0),
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            //borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.grey, width: 5.0),
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('Images/bunny.png')),
            boxShadow: [
                BoxShadow(
                  color: Colors.greenAccent.shade200,
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset: Offset(4,-4),
                )
            ],
          ),
        )
      );
  }
}
