import 'package:flutter/material.dart';

class HeaderSaved extends StatelessWidget {
  const HeaderSaved({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Saved",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}
