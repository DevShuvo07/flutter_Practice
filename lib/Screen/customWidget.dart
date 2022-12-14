import 'package:flutter/material.dart';

import 'ListView/ListTileCustom.dart';

class customWidget extends StatelessWidget {
  const customWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            listTileCustom(title: "Mouse", subtitle: "A4Tech Mouse"),
            listTileCustom(title: "Keyboard", subtitle: "A4Tech Keyboard", leadingIcon: Icons.keyboard, trailIcon: Icons.shopping_bag, iconCOlor: Colors.amberAccent, listTileColor: Colors.blueGrey,),
            listTileCustom(title: "Webcam", subtitle: "TP LInk Web cam", leadingIcon: Icons.camera, trailIcon: Icons.shopping_cart_checkout_outlined,),
            listTileCustom(title: "Mouse", subtitle: "A4Tech Mouse"),
            listTileCustom(title: "Keyboard", subtitle: "A4Tech Keyboard", leadingIcon: Icons.keyboard, trailIcon: Icons.shopping_bag, iconCOlor: Colors.amberAccent, listTileColor: Colors.blueGrey,),
            listTileCustom(title: "Webcam", subtitle: "TP LInk Web cam", leadingIcon: Icons.camera, trailIcon: Icons.shopping_cart_checkout_outlined,),
            listTileCustom(title: "Mouse", subtitle: "A4Tech Mouse"),
            listTileCustom(title: "Keyboard", subtitle: "A4Tech Keyboard", leadingIcon: Icons.keyboard, trailIcon: Icons.shopping_bag, iconCOlor: Colors.amberAccent, listTileColor: Colors.blueGrey,),
            listTileCustom(title: "Webcam", subtitle: "TP LInk Web cam", leadingIcon: Icons.camera, trailIcon: Icons.shopping_cart_checkout_outlined,),
            listTileCustom(title: "Mouse", subtitle: "A4Tech Mouse"),
            listTileCustom(title: "Keyboard", subtitle: "A4Tech Keyboard", leadingIcon: Icons.keyboard, trailIcon: Icons.shopping_bag, iconCOlor: Colors.amberAccent, listTileColor: Colors.blueGrey,),
            listTileCustom(title: "Webcam", subtitle: "TP LInk Web cam", leadingIcon: Icons.camera, trailIcon: Icons.shopping_cart_checkout_outlined,)
          ],
        ),
      ),
    );
  }
}


