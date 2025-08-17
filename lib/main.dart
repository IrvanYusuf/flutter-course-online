import 'package:course_online/screens/detail_course_screen.dart';
import 'package:course_online/screens/home_screen.dart';
import 'package:course_online/screens/main_screen.dart';
import 'package:course_online/screens/my_course_screen.dart';
import 'package:course_online/screens/on_boarding_screen.dart';
import 'package:course_online/screens/profile_screen.dart';
import 'package:course_online/screens/saved_screen.dart';
import 'package:course_online/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Daftar halaman untuk BottomNavigationBar
  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const MyCourseScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course Online',
      // Definisikan rute bernama di sini
      routes: {
        '/': (context) => MainScreen(
          selectedIndex: _selectedIndex,
          onTap: _onTap,
          pages: _pages,
        ),
        '/on-boarding': (context) => const OnBoardingScreen(),
        "/course-detail": (context) => const DetailCourseScreen(),
      },
      initialRoute: '/on-boarding',
    );
  }
}
