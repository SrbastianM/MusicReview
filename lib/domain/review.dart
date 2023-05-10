import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/images/my-chemichal.jpeg";
  String name = "Pepo";
  String details = "1 Review - 5 Photos";
  String comment = "There's a amazing place, home";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(left: 10.0),
      width: 10.0,
      child: const Icon(
        Icons.star,
        size: 16.0,
        color: Color(0xFFf2C611),
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(left: 10.0),
      child: const Icon(
        Icons.star_half,
        size: 16.0,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(left: 10.0),
      child: const Icon(
        Icons.star_border,
        size: 16.0,
        color: Color(0xFFf2C611),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    final userDatails = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
      child: Row(
        children: [
          Text(
            details,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 12.0,
              fontFamily: "Lato",
            ),
          ),
          star,
          star,
          star,
          star,
          starBorder
        ],
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userDatails, userComment],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
      ),
    );

    return Row(
      children: [photo, userInformation],
    );
  }
}
