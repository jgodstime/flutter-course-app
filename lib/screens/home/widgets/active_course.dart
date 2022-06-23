import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widgets/categroy_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CategroyTitle("Currently active", "view all"),
        Container(
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kFontLight.withOpacity(0.2),
            border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/images/progress.png",
                    width: 60,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Symentry theory",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kFont),
                    ),
                    Text(
                      "2 lessons left",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kFontLight),
                    )
                  ],
                ),
              ],
            ),
            CircularPercentIndicator(
              radius: 24.0,
              lineWidth: 5.0,
              percent: 0.61,
              center: Text(
                '61%',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              progressColor: kAccent,
            ),
          ]),
        ),
      ]),
    );
  }
}
