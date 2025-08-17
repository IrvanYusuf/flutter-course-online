import 'package:course_online/components/screens/home/popular_mentors/avatar_mentor.dart';
import 'package:course_online/components/ui/header_section.dart';
import 'package:course_online/dummy/dummy_popular_mentors.dart';
import 'package:flutter/material.dart';

class PopularMentors extends StatelessWidget {
  const PopularMentors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderSection(title: "Popular Mentors"),
        SizedBox(
          height: 4,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              dummyPopularMentors.length,
              (index) => Padding(
                padding: EdgeInsetsGeometry.only(right: 16),
                child: AvatarMentor(
                  avatarUrl: dummyPopularMentors[index].image,
                  name: dummyPopularMentors[index].name,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
