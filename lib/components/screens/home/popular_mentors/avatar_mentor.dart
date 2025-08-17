import 'package:flutter/material.dart';

class AvatarMentor extends StatelessWidget {
  final String avatarUrl;
  final String name;
  const AvatarMentor({super.key, required this.avatarUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(99),
          child: Image.asset(
            avatarUrl,
            fit: BoxFit.cover,
            width: 60,
            height: 60,
          ),
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
