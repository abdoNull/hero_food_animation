import 'package:flutter/material.dart';
import 'package:here_animation/models/recipe.dart';

class HeroBackground extends StatelessWidget {
  const HeroBackground({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "background-${recipe.name}",
      transitionOnUserGestures: true,
      flightShuttleBuilder: (
        BuildContext flightContext,
        Animation<double> animation,
        HeroFlightDirection flightDirection,
        BuildContext fromHeroContext,
        BuildContext toHeroContext,
      ) {
        Animation<BorderRadius> _borderAnimation;
        _borderAnimation = BorderRadiusTween(
          begin: BorderRadius.circular(20.0),
          end: BorderRadius.circular(0.0),
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeIn,
          ),
        );
        return AnimatedBuilder(
          animation: _borderAnimation,
          builder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: _borderAnimation.value,
                color: Colors.white,
              ),
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Colors.white,
        ),
      ),
    );
  }
}