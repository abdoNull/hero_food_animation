import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String recipeName;
  const Background({
    Key key,
    this.recipeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "background-$recipeName",
      transitionOnUserGestures: true,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
      ),
    );
  }
}