import 'package:course_online/constants/color.dart';
import 'package:course_online/constants/constant.dart';
import 'package:course_online/dummy/dummy_my_courses.dart';
import 'package:course_online/utils/currency_format.dart';
import 'package:flutter/material.dart';

class BioInstructor extends StatelessWidget {
  const BioInstructor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(
              savedCourses[0].name,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
            Row(
              spacing: 8,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    avatarUrl,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  savedCourses[0].instructor,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 6,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      size: 16,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(savedCourses[0].rating.toString()),
                    SizedBox(
                      width: 4,
                    ),
                    Text("(${savedCourses[0].countReviews})"),
                  ],
                ),
                Text(
                  CurrencyFormat().formattedAmount(
                    savedCourses[0].price ?? 0,
                  ),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: COLOR_PRIMARY,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
