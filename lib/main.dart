import 'package:flutter/material.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/view/splashscreen/splashscreen.dart';

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
      home: SplashView(),
    );
  }
}
