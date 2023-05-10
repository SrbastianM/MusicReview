import 'package:flutter/material.dart';
import 'package:social_aplication/floating_action_button_green.dart';

// ignore: must_be_immutable
class ProfileTrips extends StatelessWidget {
  String mainTitleCard;
  String placeName;
  String steps;
  String pathImageOne = "assets/images/imageOne.jpg";

  ProfileTrips(
      this.mainTitleCard, this.placeName, this.steps, this.pathImageOne,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final profileCard = Center(
      child: Container(
        width: 350.0,
        height: 220.0,
        margin: const EdgeInsets.only(top: 100.0, left: 10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImageOne),
          ),
          // color: const Color.fromARGB(255, 136, 134, 134),
          borderRadius: const BorderRadius.all(
            Radius.circular(30.0),
          ),
          shape: BoxShape.rectangle,
          boxShadow: const [
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

    final descriptionBox = Center(
      child: Container(
        width: 280.0,
        height: 120.0,
        margin: const EdgeInsets.only(top: 390.0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleProfileCard,
              descriptionPlace,
              stepsWalking,
            ],
          ),
        ),
      ),
    );

    return Stack(
      alignment: const Alignment(0.63, 0.71),
      children: [
        profileCard,
        descriptionBox,
        const FloatingActionButtonGreen()
      ],
    );
  }
}
