import 'package:flutter/material.dart';

class HeroRecipeImage extends StatelessWidget {
  const HeroRecipeImage({
    Key key,
    @required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    double recipeImageHeight = screenHeight * 0.25;
    return Hero(
      tag: "recipe-$imagePath",
      transitionOnUserGestures: true,
      flightShuttleBuilder: (
        BuildContext flightContext,
        Animation<double> animation,
        HeroFlightDirection flightDirection,
        BuildContext fromHeroContext,
        BuildContext toHeroContext,
      ) {
        final Hero toHero = toHeroContext.widget;
        return RotationTransition(
          turns: animation,
          child: toHero.child,
        );
      },
      child: Image.asset(
        imagePath,
        height: recipeImageHeight,
      ),
    );
  }
}
