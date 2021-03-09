import 'package:flutter/material.dart';
import 'package:here_animation/models/recipe.dart';
import 'package:here_animation/screens/recipes/local_widget/recipes_carousel.dart';

class Recipes extends StatefulWidget {
  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  PageController _pageController;
  int _currentScreen = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hero Food',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 28,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 24, 8),
            child: Icon(
              Icons.favorite,
              // FontAwesomeIcons.heart,
              size: 28,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: //RecipesCarousel()
            Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: RecipesCarousel(
                    pageController: _pageController, recipes: recipes)),
      ),
    );
  }
}
