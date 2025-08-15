import 'package:course_online/components/screens/my_courses/header/header_my_courses.dart';
import 'package:course_online/components/ui/card_my_course.dart';
import 'package:course_online/components/ui/custom_textfield.dart';
import 'package:course_online/dummy/dummy_my_courses.dart';
import 'package:flutter/material.dart';

class MyCourseScreen extends StatefulWidget {
  const MyCourseScreen({super.key});

  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderMyCourses(),
          SizedBox(
            height: 20,
          ),
          CustomTextfield(fieldController: _searchController),
          SizedBox(
            height: 20,
          ),
          Column(
            spacing: 10,
            children: List.generate(
              dummyCourses.length,
              (int index) => (CardMyCourse(
                course: dummyCourses[index],
                showRating: false,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
