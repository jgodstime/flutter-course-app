import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    course.imageUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              height: 50,
              width: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: kAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13))),
                onPressed: () {},
                child: Text("Start class"),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            child: Container(
              padding: EdgeInsets.only(left: 5),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(13),
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: () => Navigator.of(context).pop(),
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
