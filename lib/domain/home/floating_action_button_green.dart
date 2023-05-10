import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});

  @override
  State<FloatingActionButtonGreen> createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool _pressed = false;

  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(this._pressed ? Icons.favorite_border : Icons.favorite),
    );
  }
}
