import 'package:flutter/material.dart';
import 'package:here_animation/models/recipe.dart';

class IngredientRow extends StatelessWidget {
  final Ingredient ingredient;

  const IngredientRow({Key key, this.ingredient}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              ingredient.quantity,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          ClipOval(
            child: Image.asset(
              ingredient.imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 32),
              child: Text(
                ingredient.name,
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}