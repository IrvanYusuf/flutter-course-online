import 'package:course_online/models/course.model.dart';

List<Course> dummyCourses = [
  Course(
    id: '1',
    name: 'Belajar Flutter dari Nol',
    instructor: 'Irvan Yusuf Cahyadi',
    progress: 0.4,
    rating: 4.2,
  ),
  Course(
    id: '2',
    name: 'Mastering React JS',
    instructor: 'John Doe',
    progress: 0.7,
    rating: 4.9,
  ),
  Course(
    id: '3',
    name: 'UI/UX Design Fundamentals',
    instructor: 'Jane Smith',
    progress: 1.0,
    rating: 4.5,
  ),
];

List<Course> savedCourses = [
  Course(
    id: '1',
    name: 'Belajar Flutter dari Nol',
    instructor: 'Irvan Yusuf Cahyadi',
    price: 1200000,
    rating: 4.2,
    countReviews: 500,
  ),
  Course(
    id: '2',
    name: 'Mastering React JS',
    instructor: 'John Doe',
    price: 900000,
    rating: 4.9,
    countReviews: 1000,
  ),
  Course(
    id: '3',
    name: 'UI/UX Design Fundamentals',
    instructor: 'Jane Smith',
    price: 200000,
    rating: 4.5,
    countReviews: 200,
  ),
];
