import 'package:flutter/material.dart';
import 'package:here_animation/models/recipe.dart';

import 'ingredient_row.dart';

class IngredientList extends StatelessWidget {
  const IngredientList({
    Key key,
    @required this.ingredients,
  }) : super(key: key);

  final List<Ingredient> ingredients;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            bottom: 0,
            left: (screenWidth / 2) - 1,
            child: Container(
              transform: Matrix4.translationValues(0, -30, 0),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.black26, width: 2),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: ingredients.map((ingredient) {
                return IngredientRow(
                  ingredient: ingredient,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
