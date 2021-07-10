import 'package:flutter_application_1/constanst/constanst.dart';
// ignore: unused_import
import 'package:flutter_application_1/widgets/left_bar.dart';
// ignore: unused_import
import 'package:flutter_application_1/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",
            style:
                TextStyle(color: accentHexcolor, fontWeight: FontWeight.w300)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
