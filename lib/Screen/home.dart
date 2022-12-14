import 'dart:ui';

import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {},),
          title: Text('Home'),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart_checkout_sharp), onPressed: () {},),
            IconButton(icon: Icon(Icons.search_sharp), onPressed: () {},)
          ],
          elevation: 5.0,
          centerTitle: true,
          backgroundColor: Colors.amber.withOpacity(0.9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(5.0))
          ),
          flexibleSpace: Image(
            image: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"),
            fit: BoxFit.cover,
            ),
        ),
        body: Center(
          child: OutlinedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Lets see"),
                Icon(Icons.shopping_cart_checkout_outlined)
              ],
            ),
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              primary: Colors.yellow,
              onPrimary: Colors.black87,
              elevation: 15,
              shadowColor: Colors.yellow,
              side: BorderSide(color: Colors.black87, width: 2),
              shape: StadiumBorder()
            ),
          ),
        ),
    );
  }
}