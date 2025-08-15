import 'package:course_online/components/screens/saved_screen/header/header_saved.dart';
import 'package:course_online/components/ui/card_my_course.dart';
import 'package:course_online/dummy/dummy_my_courses.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSaved(),
          SizedBox(
            height: 20,
          ),
          Column(
            spacing: 10,
            children: List.generate(
              savedCourses.length,
              (int index) => (CardMyCourse(
                course: savedCourses[index],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
