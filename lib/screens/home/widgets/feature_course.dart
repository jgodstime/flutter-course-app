import 'package:course_app/models/course.dart';
import 'package:course_app/screens/home/widgets/categroy_title.dart';
import 'package:course_app/screens/home/widgets/course_item.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {
  final courseslist = Course.generateCourses();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CategroyTitle("Top of the week", "View all"),
        Container(
          height: 300,
          child: ListView.separated(
              padding: const EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: courseslist.length,
              itemBuilder: (context, index) => CourseItem(courseslist[index]),
              separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  )),
        )
      ]),
    );
  }
}
