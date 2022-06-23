import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CategroyTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  CategroyTitle(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: kFont, fontSize: 20),
          ),
          Text(
            rightText,
            style: TextStyle(fontSize: 16, color: kFontLight),
          ),
        ],
      ),
    );
  }
}
