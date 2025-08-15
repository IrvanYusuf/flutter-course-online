import 'package:course_online/components/screens/search/suggestions.dart';
import 'package:course_online/components/ui/custom_textfield.dart';
import 'package:flutter/material.dart';

class SearchBarCourse extends StatefulWidget {
  const SearchBarCourse({super.key});

  @override
  State<SearchBarCourse> createState() => _SearchBarCourseState();
}

class _SearchBarCourseState extends State<SearchBarCourse> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _recommendationsSearch = [
    "UIUX",
    "Web Development React Js",
    "Web Development Vue Js",
    "Flutter For Beginner",
    "Python Data Science",
  ];

  int? _selectedIndex;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextfield(fieldController: _searchController),
        SizedBox(
          height: 20,
        ),
        Suggestions(
          recommendationsSearch: _recommendationsSearch,
          initialSelectedIndex: _selectedIndex,
          onSelected: (index) {
            setState(() {
              _selectedIndex = index;
              _searchController.text =
                  _recommendationsSearch[index]; // isi otomatis
            });
          },
        ),
      ],
    );
  }
}
