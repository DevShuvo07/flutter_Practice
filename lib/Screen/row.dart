import 'dart:html';

import 'package:flutter/material.dart';

class row extends StatelessWidget {
  const row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row and Column"), centerTitle: true,),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Image(image: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"), width:120,)),
                Expanded(child: Image(image: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"), width:120,)),
                Expanded(flex: 2 ,child: Image(image: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"), width:120,)),
                Expanded(child: Image(image: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"), width:120,)),
                Expanded(flex: 2,child: Image(image: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"), width:120,))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("THis ic row2 column1"),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone, size: 35.0,),
                    Text("Phone")
                  ],
                ),Column(
                  children: [
                    Icon(Icons.alt_route, size: 35.0,),
                    Text("Route")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, size: 35.0,),
                    Text("Share")
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}