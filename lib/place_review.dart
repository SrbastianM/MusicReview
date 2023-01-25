import 'package:flutter/material.dart';
import 'profile_trips.dart';

class PlaceReviewList extends StatelessWidget {
  const PlaceReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileTrips("My Favorite zone", "Guatavita, hitting smile",
              "Stepz, 123, 123, 123", "assets/images/imageThree.jpg"),
          ProfileTrips("My Favorite zone", "Calera, hitting smile",
              "Stepz, 123, 123, 123", "assets/images/imageThree.jpg"),
          ProfileTrips("My Favorite zone", "Guasca, hitting smile",
              "Stepz, 123, 123, 123", "assets/images/imageThree.jpg")
        ],
      ),
    );
  }
}
