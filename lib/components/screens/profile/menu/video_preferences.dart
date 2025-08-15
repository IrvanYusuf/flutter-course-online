import 'package:course_online/components/ui/menu_link.dart';
import 'package:flutter/material.dart';

class VideoPreferences extends StatelessWidget {
  const VideoPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Video Preferences",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(
          height: 6,
        ),
        MenuLink(text: "Download Options"),
        SizedBox(
          height: 16,
        ),
        MenuLink(text: "Playback Options"),
        SizedBox(
          height: 16,
        ),
        MenuLink(text: "Video Quality"),
        SizedBox(
          height: 16,
        ),
        MenuLink(text: "Subtitle Settings"),
        SizedBox(
          height: 16,
        ),
        MenuLink(text: "Autoplay Next Video"),
      ],
    );
  }
}
