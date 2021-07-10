import 'package:flutter/material.dart';
import 'package:flutter_application_1/constanst/constanst.dart';

class RightBar extends StatelessWidget {
  final double barWidht;

  const RightBar({required Key key, this.barWidht = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidht,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
          color: accentHexcolor,
        ),
      ],
    );
  }
}
