import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class MenuLink extends StatelessWidget {
  final String text;
  final IconData icon;
  const MenuLink({
    super.key,
    required this.text,
    this.icon = Feather.arrow_right,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        Icon(
          icon,
          color: Colors.grey.shade500,
        ),
      ],
    );
  }
}
