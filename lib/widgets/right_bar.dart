import 'package:flutter/material.dart';
import 'package:flutter_application_1/constanst/constanst.dart';

class RightBar extends StatelessWidget {
  double barWidth;

  RightBar({this.barWidth = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color: accentHexcolor,
          ),
          
        ),
      ],
    );
  }
}
