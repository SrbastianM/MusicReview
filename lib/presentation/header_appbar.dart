import 'package:flutter/material.dart';
import 'gradiant_back.dart';
import 'card_image_list.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradiantBack("Welcome !"),
        const CardImageList(),
      ],
    );
  }
}
