import 'package:flutter/material.dart';

class listView extends StatelessWidget {
  listView({super.key});

  List<String> products = ["Bed", "Sofa", "Chair", "Table"];
  List<String> Products_details = ["King size bed", "King size sofa", "normal size chair", "King size table"];
  List<int> price = [200,1000,300, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

/*
itemExtent: 70.0,
          padding: EdgeInsets.all(20.0),
          
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.access_alarm_sharp),backgroundColor: Colors.lightBlue[400],foregroundColor: Colors.amber[100],),
              title: Text("Hello"),
              subtitle: Text("Check all data"),
              trailing: Text("3500"),
              onTap: () {
                
              },
              tileColor: Colors.brown[200],
            ),
            ListTile(
              leading: Icon(Icons.access_alarm_sharp),
              title: Text("Hello"),
              subtitle: Text("Check all data"),
              trailing: Text("3500"),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.access_alarm_sharp),
              title: Text("Hello"),
              subtitle: Text("Check all data"),
              trailing: Text("3500"),
              onTap: () {
                
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                child: Text("C"),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Lorem রোববার (৪ ডিসেম্বর) দুপুরে ডিএমপি মিডিয়া সেন্টারে সাংবাদিকদের প্রশ্নের জবাবে এসব তথ্য জানান ডিএমপির মিডিয়া অ্যান্ড পাবলিক রিলেশনস বিভাগের উপ-পুলিশ কমিশনার (ডিসি) মো. ফারুক হোসেন। তিনি বলেন, শনিবার (৩ ডিসেম্বর) রাজধানীর আবাসিক হোটেল ও বিভিন্ন এলাকায় যে অভিযান পরিচালনা করা হয়েছে তা আমাদের রুটিন ওয়ার্ক। অভিযানে গ্রেপ্তার করা হয়েছে শতাধিক ব্যক্তিকে। তাদের বিরুদ্ধে সুনির্দিষ্ট তথ্য-প্রমাণ রয়েছে। পাশাপাশি কেউ যেন অহেতুক হয়রানির শিকার না হন, সে বিষয়টি পুলিশকে সতর্কভাবে দেখভাল করতে নির্দেশ দেওয়া হয়েছে।"
              ),
            )
          ],

*/