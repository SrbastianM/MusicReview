import 'package:flutter/material.dart';
import 'package:social_aplication/presentation/header_profile.dart';
import 'place_review.dart';

class ProfileZone extends StatelessWidget {
  const ProfileZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: const HeaderProfile(),
        ),
        ListView(
          children: const [
            PlaceReviewList(),
          ],
        )
      ],
    );
  }
}
