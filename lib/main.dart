import 'package:course_online/constants/color.dart';
import 'package:course_online/screens/detail_course_screen.dart';
import 'package:course_online/screens/home_screen.dart';
import 'package:course_online/screens/my_course_screen.dart';
import 'package:course_online/screens/profile_screen.dart';
import 'package:course_online/screens/saved_screen.dart';
import 'package:course_online/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
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
        '/': (context) => _MainScreen(
          selectedIndex: _selectedIndex,
          onTap: _onTap,
          pages: _pages,
        ),
        '/home': (context) => const HomeScreen(),
        "/course-detail": (context) => const DetailCourseScreen(),
      },
      initialRoute: '/',
    );
  }
}

// Pisahkan Scaffold BottomNavigationBar ke dalam widget terpisah
class _MainScreen extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  final List<Widget> pages;

  const _MainScreen({
    required this.selectedIndex,
    required this.onTap,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 10.0,
          ),
          child: pages[selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onTap,
        selectedItemColor: COLOR_PRIMARY,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Feather.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.play_circle),
            label: "My Courses",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
