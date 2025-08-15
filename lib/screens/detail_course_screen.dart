import 'package:course_online/components/screens/detail_course/bio_instructor.dart';
import 'package:course_online/components/screens/detail_course/description.dart';
import 'package:course_online/components/screens/detail_course/lessons.dart';
import 'package:course_online/constants/color.dart';
import 'package:course_online/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class DetailCourseScreen extends StatelessWidget {
  const DetailCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Feather.arrow_left),
        ),
        centerTitle: true,
        title: Text(
          "Detail Course",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        actions: [
          Icon(Feather.bookmark),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                  top: 16,
                  bottom: 70,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: Image.network(courseThumbnail),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BioInstructor(),
                    SizedBox(
                      height: 20,
                    ),
                    Description(),
                    SizedBox(
                      height: 20,
                    ),
                    Lessons(),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: COLOR_PRIMARY,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // aksi tombol
                  },
                  child: const Text(
                    "Mulai Kursus",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
