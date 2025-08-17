import 'package:course_online/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class Lessons extends StatelessWidget {
  const Lessons({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> lessons = [
      {
        "title": "Bab 1: Introduction",
        "items": ["Apa itu Flutter?", "Instalasi Flutter", "Struktur Proyek"],
      },
      {
        "title": "Bab 2: Basic Widget",
        "items": ["Text", "Container", "Row & Column"],
      },
    ];

    return ListView.builder(
      shrinkWrap: true, // biar muat di SingleChildScrollView
      physics: NeverScrollableScrollPhysics(), // biar scroll ikut parent
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        final String title = lesson["title"] as String; // cast ke String
        final List<String> items =
            lesson["items"] as List<String>; // cast ke List<String>

        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 10),
          child: ExpansionTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent), // hilangkan border
              borderRadius: BorderRadius.zero,
            ),
            collapsedShape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.transparent,
              ), // hilangkan border juga saat collapsed
              borderRadius: BorderRadius.zero,
            ),
            title: Text(title),
            children: items.map((item) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Video - 10:00 menit",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Icon(
                      Feather.play_circle,
                      color: COLOR_PRIMARY,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
