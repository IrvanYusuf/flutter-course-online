import 'package:course_online/components/ui/card_course.dart';
import 'package:course_online/components/ui/header_section.dart';
import 'package:flutter/material.dart';

class BestCourses extends StatelessWidget {
  const BestCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> courseTitles = [
      "Flutter Development",
      "UI/UX Design",
      "Data Science",
      "Cybersecurity",
      "Machine Learning",
      "Digital Marketing",
    ];
    return Column(
      children: [
        HeaderSection(title: "Best Courses"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              6,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  width: 200,
                  height: 250,
                  child: CardCourse(
                    title: courseTitles[index],
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
