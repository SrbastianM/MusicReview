import 'package:flutter/material.dart';

class GradientProfileBack extends StatelessWidget {
  String title;

  GradientProfileBack(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
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
      alignment: const Alignment(-0.9, -0.6),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
