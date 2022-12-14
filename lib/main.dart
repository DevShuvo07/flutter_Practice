import 'package:flutter/material.dart';
import 'package:flutter_login/Screen/Home.dart';
import 'package:flutter_login/Screen/NewWindow/NavigateNewWIndow.dart';
import 'package:flutter_login/Screen/customWidget.dart';
import 'package:flutter_login/Screen/dashboard.dart';
import 'package:flutter_login/Screen/floatingButton.dart';
import 'package:flutter_login/Screen/listView.dart';
import 'package:flutter_login/Screen/navigationDrawe.dart';
import 'package:flutter_login/Screen/row.dart';
import 'package:flutter_login/Screen/stackAndPosition.dart';
import 'package:flutter_login/Screen/statefullStateless.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: FirstWindow()
    );
  }
}