import 'package:course_online/components/ui/card_course.dart';
import 'package:course_online/components/ui/header_section.dart';
import 'package:course_online/dummy/dummy_my_courses.dart';
import 'package:flutter/material.dart';

class PopularCourses extends StatelessWidget {
  const PopularCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderSection(title: "Popular Courses"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              dummyPopularCourses.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  width: 200,
                  height: 250,
                  child: CardCourse(
                    course: dummyPopularCourses[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
