import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Feather.arrow_left)),
        Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.more_vertical,
          ),
        ),
      ],
    );
  }
}
