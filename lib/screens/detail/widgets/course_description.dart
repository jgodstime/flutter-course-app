import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  CourseDescription(this.course);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Image.asset(
              course.authorImg,
              width: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              course.author,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 5,
              width: 5,
              decoration:
                  BoxDecoration(color: kFontLight, shape: BoxShape.circle),
            ),
            Icon(
              Icons.access_time_filled,
              size: 20,
              color: kAccent,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "1hr 35 min",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: kFont),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          course.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kFont,
            fontSize: 22,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "How we develope game and how its our culture",
          style: TextStyle(
              fontSize: 16,
              wordSpacing: 2,
              fontWeight: FontWeight.bold,
              color: kFontLight),
        ),
      ]),
    );
  }
}
