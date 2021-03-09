import 'package:flutter/material.dart';
import 'package:here_animation/models/recipe.dart';
import 'package:here_animation/screens/recipe_details.dart/recipe_detail_screen.dart';
import 'package:here_animation/screens/recipes/local_widget/background.dart';
import 'package:here_animation/screens/recipes/local_widget/card_info.dart';
import 'package:here_animation/screens/recipes/local_widget/recipe_image.dart';
import 'package:here_animation/widgets.dart';


class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({Key key, this.recipe}) : super(key: key);



  void _navigateToDetail(BuildContext context) {
    Navigator.push(
      context,
      FadeRoute(
        page: RecipeDetail(recipe: recipe),
        duration: 800,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final orientation = MediaQuery.of(context).orientation;
    bool isLandscape = orientation == Orientation.landscape;

    Widget _content = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RecipeImage(imagePath: recipe.imagePath),
        CardInfo(recipe: recipe),
        SizedBox(height: 0.0),
      ],
    );

    if (isLandscape) {
      _content = Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RecipeImage(imagePath: recipe.imagePath),
          Container(
            width: screenWidth / 2,
            child: CardInfo(recipe: recipe),
          ),
        ],
      );
    }
    return InkWell(
      onTap: () {
        _navigateToDetail(context);
      },
      child: Container(
        margin: EdgeInsets.all(24.0),
        padding: isLandscape ? EdgeInsets.all(8) : null,
        child: Stack(
          children: [
             Background(recipeName: recipe.name),
            _content,
          ],
        ),
      ),
    );
  }
}
