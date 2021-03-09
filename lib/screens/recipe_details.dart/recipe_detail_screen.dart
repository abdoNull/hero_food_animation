import 'package:flutter/material.dart';
import 'package:here_animation/models/navigation_item.dart';
import 'package:here_animation/models/recipe.dart';
import 'package:here_animation/screens/recipe_details.dart/local_widget/header.dart';
import 'package:here_animation/screens/recipe_details.dart/local_widget/hero_background.dart';
import 'package:here_animation/screens/recipe_details.dart/local_widget/hero_recipe_image.dart';
import 'package:here_animation/screens/recipe_details.dart/local_widget/ingredient_list.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key key, @required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail>
    with SingleTickerProviderStateMixin {
  AnimationController _show;
  Animation<double> _navAnimation;
  Animation<Offset> _contentAnimation;
  @override
  void initState() {
    super.initState();

    _show = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    );
    _navAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
        parent: _show,
        curve: Interval(
          0.4,
          1,
          curve: Curves.fastOutSlowIn,
        )));

    _contentAnimation = Tween<Offset>(
      begin: Offset(0, -0.1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _show,
        curve: Interval(
          0,
          0.6,
          curve: Curves.easeIn,
        ),
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 700), () {
        _show.forward();
      });
    });
  }

  @override
  void dispose() {
    _show.dispose();
    super.dispose();
  }

  void _navigateBack(BuildContext context) {
    _show.reverse();
    Future.delayed(Duration(milliseconds: 360), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _navigateBack(context);
        return false; 
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 28),
            onPressed: () {
              _navigateBack(context);
            },
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 24, 8),
              child: Icon(
                Icons.favorite,
                //   FontAwesomeIcons.heart,
                size: 28,
              ),
            )
          ],
        ),
        bottomNavigationBar: SizeTransition(
          sizeFactor: _navAnimation,
          axisAlignment: -1,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: navItems
                .map((item) => BottomNavigationBarItem(
                      icon: Icon(item.icon),
                      title : Text(item.title),
                    ))
                .toList(),
            currentIndex: 0,
            backgroundColor: Color(0xFFf0efed),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: <Widget>[
                      Container(
                        // A fixed-height child.
                        height: 200,
                        child: Header(recipe: widget.recipe),
                      ),
                      Expanded(
                        // A flexible child that will grow to fit the viewport but
                        // still be at least as big as necessary to fit its contents.
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            HeroBackground(recipe: widget.recipe),
                            Column(
                              children: <Widget>[
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -30.0, 0.0),
                                  child: HeroRecipeImage(
                                    imagePath: widget.recipe.imagePath,
                                  ),
                                ),
                                AnimatedBuilder(
                                  animation: _show,
                                  builder: (context, child) {
                                    return SlideTransition(
                                      position: _contentAnimation,
                                      child: Opacity(
                                        opacity: _show.value,
                                        child: child,
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      IngredientList(
                                        ingredients: widget.recipe.ingredients,
                                      ),
                                      // Other contents can be added here
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}