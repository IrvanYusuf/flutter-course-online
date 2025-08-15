import 'package:flutter/material.dart';

class AvatarMentor extends StatelessWidget {
  final String avatarUrl;
  const AvatarMentor({super.key, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: BorderRadius.circular(
              99,
            ),
          ),
          child: Image.network(avatarUrl),
        ),
        Text(
          "John Doe",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
