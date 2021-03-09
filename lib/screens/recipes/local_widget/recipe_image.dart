import 'package:flutter/material.dart';

class RecipeImage extends StatelessWidget {
  final String imagePath;

  const RecipeImage({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    double recipeImageHeight = screenHeight * 0.30;
    final orientation = MediaQuery.of(context).orientation;
    bool isLandscape = orientation == Orientation.landscape;

    return Container(
      padding: isLandscape ? null : EdgeInsets.only(top: 16),
      child: Hero(
        tag: "recipe-$imagePath",
        transitionOnUserGestures: true,
        child: Image.asset(
          imagePath,
          height: recipeImageHeight,
        ),
      ),
    );
  }
}