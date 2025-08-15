import 'package:flutter/material.dart';

class HeaderMyCourses extends StatelessWidget {
  const HeaderMyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Courses",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}
