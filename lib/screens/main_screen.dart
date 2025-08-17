import 'package:course_online/constants/color.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  final List<Widget> pages;

  const MainScreen({
    super.key,
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
