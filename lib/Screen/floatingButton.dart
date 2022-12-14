import 'package:flutter/material.dart';

class floatingButton extends StatelessWidget {
  const floatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Floating Action Button"),),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        // elevation: 0,
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(20.0),
        //   side: BorderSide(color: Colors.blue, width: 2.0, style: BorderStyle.solid)
        // )
        //mini: true,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  Text(
                    "Phone",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.linked_camera,
                    color: Colors.white,
                  ),
                  Text(
                    "Camera",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}