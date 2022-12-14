import 'package:flutter/material.dart';

class Stateless extends StatelessWidget {
  const Stateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("StateFull and Stateless"),
          centerTitle: true,
        ),
        body: statefull(),
      ),
    );
  }
}
class statefull extends StatefulWidget {
  const statefull({super.key});

  @override
  State<statefull> createState() => _statefullState();
}

class _statefullState extends State<statefull> {

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Nike Shoes"),
          trailing: IconButton(
            icon: liked? (Icon(Icons.favorite)):(Icon(Icons.favorite_border)),
            onPressed: (() => setState(() {
              liked = !liked;
            })),
          ),
        )
      ],
    );
  }
}