import 'package:course_online/models/mentor.model.dart';

class Course {
  final String id;
  final String name;
  final Mentor instructor;
  final String? image;
  final double? rating;
  final int? countReviews;
  final double? price;
  final double? progress; // 0.0 - 1.0

  Course({
    required this.id,
    required this.name,
    required this.instructor,
    this.image,
    this.progress,
    required this.rating,
    this.countReviews,
    this.price,
  });
}
