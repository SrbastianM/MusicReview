import 'package:flutter/material.dart';
import 'gradiant_back.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradiantBack("Profile")],
    );
  }
}
