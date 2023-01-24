import 'package:flutter/material.dart';
import 'package:social_aplication/purple_button.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace,
      {super.key});

  @override
  Widget build(BuildContext context) {
    // String textDescription =
    //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry.  bLorem Ipsum has been the industry's standard dummy text ever since the 1500s. \n\n' When an unknown printer took a galley of type and scrambled it to make a type specimen book.";
    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, left: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(top: 323.0, left: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(top: 323.0, left: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w800),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, starBorder],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleStars, description, ButtonPurple("Navigate")],
    );
  }
}
