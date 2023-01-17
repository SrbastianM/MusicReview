import "package:flutter/material.dart";

class ButtonPurple extends StatelessWidget {
  String buttonText = "Navigate";

  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Navigate"),
            ),
          );
        },
        child: Container(
          height: 50.0,
          width: 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 99, 102, 112),
                Color.fromARGB(255, 57, 55, 82)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(
                  fontFamily: "Lato", fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
