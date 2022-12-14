import 'package:flutter/material.dart';

class SecondWindow extends StatelessWidget {
  SecondWindow({Key?key, required this.product_name, required this.product_details}) : super(key: key);

  String product_name, product_details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          ),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text(product_name),
              subtitle: Text(product_details),
            )
          ],
        ),
      )
    );
  }
}