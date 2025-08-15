import 'package:flutter/material.dart';

class LeftHeader extends StatelessWidget {
  const LeftHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi Sabrina 🤚",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
        ),
        Text.rich(
          TextSpan(
            text: "Let's find your ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            children: <InlineSpan>[
              TextSpan(
                text: 'Course!',
                style: TextStyle(color: Colors.teal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
