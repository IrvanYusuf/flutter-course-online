import 'package:course_online/components/screens/home/best_courses/best_courses.dart';
import 'package:course_online/components/screens/home/header/left_header.dart';
import 'package:course_online/components/screens/home/header/right_header.dart';
import 'package:course_online/components/screens/home/learning_banner.dart';
import 'package:course_online/components/screens/home/popular_courses/popular_courses.dart';
import 'package:course_online/components/screens/home/popular_mentors/popular_mentors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [LeftHeader(), RightHeader()],
          ),
          SizedBox(
            height: 20,
          ),
          LearningBanner(),
          SizedBox(
            height: 20,
          ),
          PopularMentors(),
          SizedBox(
            height: 20,
          ),
          PopularCourses(),
          SizedBox(
            height: 20,
          ),
          BestCourses(),
        ],
      ),
    );
  }
}
