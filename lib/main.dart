import 'package:flutter/material.dart';
import 'package:pattern_slider/screen/homescreen.dart';

void main() {

  runApp(
    myApp(),
  );
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Home_Page(),
      },
    );
  }
}
