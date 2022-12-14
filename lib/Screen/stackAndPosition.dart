import 'dart:ui';

import 'package:flutter/material.dart';

class stackAndPosition extends StatelessWidget {
  const stackAndPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
              width: 330,
              height: 450,
          ),
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(59, 63, 61, 61),
                  offset: Offset(0, 2),
                  spreadRadius: 5,
                  blurRadius: 10,
                )
              ],
              image: DecorationImage(
                image: AssetImage('images/bunny.png'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Stack(
            children: [
              Text("Editor's choice ",
              style: TextStyle(color: Colors.red[300], fontSize: 18)),
              Positioned(
                top: 20.0,
                child: Text("The art of making coffee ",
                style: TextStyle(color: Colors.red, fontSize: 22)),
              ),
              Positioned(
                right: 0,
                bottom: 20.0,
                child: Text("Learn to make a perfect coffee ",
                style: TextStyle(color: Colors.red, fontSize: 16)),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Text("coding with shuvo ",
                style: TextStyle(color: Colors.red, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Stack(
      //     alignment: Alignment.bottomCenter,
      //     //textDirection: TextDirection.rtl,
      //     children: [
      //       Container(
      //         height: 300,
      //         width: 200,
      //         color: Colors.green,
      //       ),
      //       Positioned(
      //         top: 10.0,
      //         child: Container(
      //           height: 200,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //       ),
      //       Positioned(
      //         bottom: 10.0,
      //         child: Container(
      //           height: 100,
      //           width: 50,
      //           color: Colors.yellow,
      //         ),
      //       )
      //     ],
      //   ),
      // ),

    );
  }
}