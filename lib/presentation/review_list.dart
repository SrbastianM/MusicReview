import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
          "assets/images/sebastian.jpg",
          "Sebastian",
          " 1 - review  - 0 photos",
          "Anime character in the mornings",
        ),
        Review(
          "assets/images/paco.jpg",
          "Paco",
          " 90 - review - 1 photos",
          "Paco master of sex and fornication",
        ),
      ],
    );
  }
}
