import 'package:flutter/material.dart';
import 'package:flutter_application_1/constanst/constanst.dart';

class LeftBar extends StatelessWidget {
  final double barWidth;

  LeftBar({this.barWidth = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width:barWidth,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: accentHexcolor
          ),
          
        ),
      ],
    );
  }
}
