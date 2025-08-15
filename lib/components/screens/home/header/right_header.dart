import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class RightHeader extends StatelessWidget {
  const RightHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Feather.search),
        ),
        Badge(
          label: Text("3"),
          offset: Offset(-6, 6),
          child: IconButton(onPressed: () {}, icon: Icon(Feather.bell)),
        ),
      ],
    );
  }
}
