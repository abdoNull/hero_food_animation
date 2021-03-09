import 'package:flutter/material.dart';
import 'package:here_animation/models/recipe.dart';

import 'recipe_card.dart';

class RecipesCarousel extends StatelessWidget {
  final PageController pageController;

  final List<Recipe> recipes;
  RecipesCarousel({
    Key key,
    this.pageController,
    this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: PageView.builder(
        controller: pageController,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          Recipe recipe = recipes[index];
          return AnimatedBuilder(
            animation: pageController,
            builder: (context, widget) {
              double value = 1;
              if (pageController.position.haveDimensions) {
                value = pageController.page - index;
                value = (1 - (value.abs() * 0.25)).clamp(0.0, 1.0);
              }
              return Center(
                child: SizedBox(
                  height: Curves.easeInOut.transform(value) * 500,
                  child: widget,
                ),
              );
            },
            child: RecipeCard(
              recipe: recipe,
            ),
          );
        },
      ),
    );
  }
}
