import 'package:flutter/material.dart';
import 'constants.dart';

class Indicator extends StatelessWidget {
  final isActive;

  Indicator(this.isActive);

  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? Container(
            width: 16 * 4.0,
            height: 16,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: orangeColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            ),
          )
        : Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          );
  }
}
