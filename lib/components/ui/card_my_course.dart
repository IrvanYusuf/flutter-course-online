import 'package:course_online/constants/color.dart';
import 'package:course_online/constants/constant.dart';
import 'package:course_online/models/course.model.dart';
import 'package:course_online/utils/currency_format.dart';
import 'package:flutter/material.dart';

class CardMyCourse extends StatelessWidget {
  final Course course;
  final bool? showRating;
  const CardMyCourse({super.key, required this.course, this.showRating = true});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
                course.image as String,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              // biar progress bar bisa full lebar
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    spacing: 8,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(99),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          course.instructor.image,
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(course.instructor.name),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (showRating!)
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
                        Text(course.rating.toString()),
                        SizedBox(
                          width: 4,
                        ),
                        Text("(${course.countReviews})"),
                      ],
                    ),
                  if (course.price != null)
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          CurrencyFormat().formattedAmount(
                            course.price as double,
                          ),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  if (course.progress != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: LinearProgressIndicator(
                            value: course.progress,
                            minHeight: 6,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                              COLOR_PRIMARY,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "${(course.progress! * 100).toStringAsFixed(0)}% Selesai",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
