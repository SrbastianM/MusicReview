import 'package:flutter/material.dart';

class HeaderProfileAppbar extends StatelessWidget {
  String profileImage;
  String userEmail;
  String userName;

  HeaderProfileAppbar(this.profileImage, this.userName, this.userEmail,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final profileCircularPic = Container(
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 38,
          backgroundImage: AssetImage(profileImage),
        ),
      ),
    );

    final userEmailPlace = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        userEmail,
        style: const TextStyle(
          color: Colors.white60,
          fontFamily: "Lato",
          fontSize: 20,
        ),
      ),
    );

    final userNamePlace = Container(
      margin: const EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        userName,
        style: const TextStyle(
          color: Colors.white30,
          fontFamily: "Lato",
        ),
      ),
    );

    final profileHeaderZone = Container(
      margin: const EdgeInsets.only(top: 130.0, left: 20.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        profileCircularPic,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [userEmailPlace, userNamePlace],
        )
      ]),
    );

    final iconSection = Container(
      margin: const EdgeInsets.only(top: 250.0, left: 20.0),
      child: Row(
        children: const [],
      ),
    );

    return Stack(
      children: [profileHeaderZone, iconSection],
    );
  }
}
