import 'package:flutter/material.dart';
import 'package:flutter_application_1/constanst/constanst.dart';

class LeftBar extends StatelessWidget {
  final double barWidht;

  const LeftBar({required Key key, this.barWidht = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barWidht,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          )),
          color: accentHexcolor,
        ),
      ],
    );
  }
}
