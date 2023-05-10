import 'package:flutter/material.dart';
import '../domain/gradiant_profile_back.dart';
import '../domain/header_profile_appbar.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientProfileBack("Profile"),
        HeaderProfileAppbar(
            "assets/images/imageThree.jpg", "Tenki", "Tenki@test.com"),
      ],
    );
  }
}
