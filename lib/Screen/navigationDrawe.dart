import 'package:flutter/material.dart';

class navDrawer extends StatelessWidget {
 navDrawer({super.key});

  List<String> products = ["Bed", "Sofa", "Chair", "Table"];
  List<String> Products_details = ["King size bed", "King size sofa", "normal size chair", "King size table"];
  List<int> price = [200,1000,300, 100];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer"),),
      drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text("SHuvo@gmail.com"),
                accountName: Text("Shuvo"),
                currentAccountPicture: CircleAvatar(foregroundImage: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"),),
                otherAccountsPictures: [
                  CircleAvatar(foregroundImage: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"),),
                  CircleAvatar(foregroundImage: NetworkImage("https://i.ibb.co/Vjp1ntQ/bunny.png"),),
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Shop"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorite"),
                onTap: () {},
              ),
              Padding(padding: EdgeInsets.all(20.0), child: Text("Label"),),
              ListTile(
                leading: Icon(Icons.label),
                title: Text("Label1"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text("Label2"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text("Label3"),
                onTap: () {},
              ),
            ],
          ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: CircleAvatar(child: Text(products[index][1]),),
                title: Text(products[index]),
                subtitle: Text(Products_details[index]),
                trailing: Text(price[index].toString()),
            );
          }),
      ),
    );
  }
}