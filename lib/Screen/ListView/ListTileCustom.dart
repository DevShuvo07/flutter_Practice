import 'package:flutter/material.dart';

class listTileCustom extends StatelessWidget {
  
  String title, subtitle;
  IconData leadingIcon, trailIcon;
  Color? listTileColor, iconCOlor;

  listTileCustom({
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.label,
    this.trailIcon = Icons.shopping_cart,
    this.listTileColor,
    this.iconCOlor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: listTileColor,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(width: 1.0, color: Colors.blue)),
        title: Text(
          title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        leading: IconButton(
          icon: Icon(leadingIcon),
          onPressed: () {},
          color: iconCOlor,
        ),
        trailing: IconButton(
            onPressed: () {}, icon: Icon(trailIcon)),
      ),
    );
  }
}