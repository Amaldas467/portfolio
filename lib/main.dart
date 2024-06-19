import 'package:flutter/material.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/view/mainscreen/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colorconstants.scaffoldcolor,
        textTheme: TextTheme(),
      ),
      home: Mainscreen(),
    );
  }
}
