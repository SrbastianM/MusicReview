import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/images/imageOne.jpg"),
          CardImage("assets/images/imageTwo.jpg"),
          CardImage("assets/images/imageThree.jpg"),
        ],
      ),
    );
  }
}
