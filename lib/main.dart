// @dart=2.9
import 'package:flutter_application_1/main.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter/material.dart';

// @dart=2.9
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Aplication",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
