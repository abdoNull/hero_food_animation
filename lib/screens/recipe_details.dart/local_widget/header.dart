import 'package:flutter/material.dart';
import 'package:here_animation/models/recipe.dart';
import 'package:here_animation/widgets.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
      child: Column(
        children: <Widget>[
          Text(
            recipe.name,
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.fade,
            softWrap: false,
          ),
          Ratings(
            value: 4,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconText(
                  icon: Icons.timer,
                  // icon: FontAwesomeIcons.solidClock,
                  text: "10 minutes",
                  iconColor: Colors.white,
                  fontColor: Colors.white,
                ),
                IconText(
                  icon: Icons.food_bank_sharp,
                  //  icon: FontAwesomeIcons.chartPie,
                  text: "2 portions",
                  iconColor: Colors.white,
                  fontColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}