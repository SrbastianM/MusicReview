import 'package:flutter/material.dart';

class ProfileTrips extends StatelessWidget {
  String mainTitleCard;
  String placeName;
  String steps;

  ProfileTrips(this.mainTitleCard, this.placeName, this.steps, {super.key});

  @override
  Widget build(BuildContext context) {
    final profileCard = Center(
      child: Container(
        height: 150.0,
        width: 350.0,
        margin: const EdgeInsets.only(top: 80.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.7, 7.0),
            ),
          ],
        ),
      ),
    );

    final titleProfileCard = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Text(
        mainTitleCard,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 17.0, fontFamily: "Lato", fontWeight: FontWeight.bold),
      ),
    );

    final descriptionPlace = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        placeName,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w100,
        ),
      ),
    );

    final stepsWalking = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        steps,
        style: const TextStyle(
          color: Color.fromARGB(255, 199, 119, 0),
          fontSize: 16.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final descriptionCard = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleProfileCard, descriptionPlace, stepsWalking],
    );

    final cardProfileZones = Stack(
      children: [
        descriptionCard,
      ],
    );

    return Row(
      children: [cardProfileZones],
    );
  }
}
