import 'package:course_online/components/ui/header_section.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> historys = [
      "React Js",
      "Next Js",
      "Python",
      "Build Object Detection Yolov8",
    ];
    return Column(
      children: [
        HeaderSection(
          title: "History",
          actionText: "Clear All",
        ),
        SizedBox(
          height: 6,
        ),
        Column(
          spacing: 10,
          children: List.generate(
            historys.length,
            (int index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Feather.clock,
                      size: 16,
                    ),
                    Text(
                      historys[index],
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                GestureDetector(
                  child: Icon(
                    Feather.x,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
