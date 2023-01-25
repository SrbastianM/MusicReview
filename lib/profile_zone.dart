import 'package:flutter/material.dart';
import 'place_review.dart';

class ProfileZone extends StatelessWidget {
  const ProfileZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: const [
            PlaceReviewList(),
          ],
        )
      ],
    );
  }
}
