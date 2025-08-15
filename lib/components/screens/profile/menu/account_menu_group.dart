import 'package:course_online/components/ui/menu_link.dart';
import 'package:flutter/material.dart';

class AccountMenuGroup extends StatelessWidget {
  const AccountMenuGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Account",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(height: 6),
        MenuLink(text: "Profile Information"),
        SizedBox(height: 16),
        MenuLink(text: "Change Password"),
        SizedBox(height: 16),
        MenuLink(text: "Payment Methods"),
        SizedBox(height: 16),
        MenuLink(text: "Purchase History"),
      ],
    );
  }
}
