import 'package:meta/meta.dart';

class Recipe {
  final String name;
  final String imagePath;
  final String description;
  final List<Ingredient> ingredients;

  Recipe({
    this.name,
    this.imagePath,
    this.description,
    this.ingredients,
  });
}

class Ingredient {
  final String name;
  final String quantity;
  final String imagePath;

  Ingredient({
    @required this.name,
    @required this.quantity,
    @required this.imagePath,
  });
}

List<Recipe> recipes = [
   
   Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/p1.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
   Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/p2.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
   Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/p3.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
   Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/p4.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
   Recipe(
    name: "Tikka Chicken Pizza",
    description: "A touch of Italian Mozarella Cheese crust",
    imagePath: "assets/images/p5.png",
    ingredients: [
      Ingredient(
        name: "Oatmeal",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Walnuts",
        quantity: "1/2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Berries",
        quantity: "1/2 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
  Recipe(
    name: "Tikka Chicken Pizza",
    description: "A touch of Italian Mozarella Cheese crust",
    imagePath: "assets/images/p6.png",
    ingredients: [
      Ingredient(
        name: "Oatmeal",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Walnuts",
        quantity: "1/2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Berries",
        quantity: "1/2 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
  Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/p7.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
    Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/p8.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
    Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/p9.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
    Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/p10.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),
    Recipe(
    name: "Burger Classico",
    description: "Vegatarian burger for an amazing delight",
    imagePath: "assets/images/11.png",
    ingredients: [
      Ingredient(
        name: "Ham",
        quantity: "1/2 c.",
        imagePath: "assets/images/oatmeal.jpg",
      ),
      Ingredient(
        name: "Ketchup",
        quantity: "2 tbsp.",
        imagePath: "assets/images/walnut.jpg",
      ),
      Ingredient(
        name: "Mayonnaise",
        quantity: "3 tbsp.",
        imagePath: "assets/images/berries.jpg",
      ),
    ],
  ),

];
