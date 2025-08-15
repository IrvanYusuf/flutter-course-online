import 'package:course_online/components/screens/search/header/header_search.dart';
import 'package:course_online/components/screens/search/history/history.dart';
import 'package:course_online/components/screens/search/search_bar/search_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSearch(),
          SizedBox(
            height: 20,
          ),
          SearchBarCourse(),
          SizedBox(
            height: 20,
          ),
          History(),
        ],
      ),
    );
  }
}
