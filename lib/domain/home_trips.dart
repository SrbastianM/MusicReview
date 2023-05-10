import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';

class HomeTrip extends StatelessWidget {
  HomeTrip({super.key});
  String descriptionDummy =
      "Singular descriptionLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Tenki", 4, descriptionDummy),
            const ReviewList()
          ],
        ),
        const HeaderAppbar()
      ],
    );
  }
}
