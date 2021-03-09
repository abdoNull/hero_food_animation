import 'package:flutter/material.dart';
import 'package:here_animation/models/recipe.dart';
import 'package:here_animation/global_widget/icon_text.dart';
import 'package:here_animation/global_widget/ratings.dart';

class CardInfo extends StatelessWidget {
  final Recipe recipe;

  const CardInfo({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    bool isLandscape = orientation == Orientation.landscape;
    return Container(
      padding: isLandscape ? null : EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            recipe.name,
            style: Theme.of(context).textTheme.headline5,
            maxLines: 1,
            overflow: TextOverflow.fade,
            softWrap: false,
          ),
          Ratings(value: 4),
          SizedBox(height: 0.0),
          Text(
            recipe.description,
            style: Theme.of(context)
                .textTheme
                .subhead
                .copyWith(fontStyle: FontStyle.italic, color: Colors.black54),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.fade,
            softWrap: false,
          ),
          SizedBox(height: 5.0),
          _buildExtra(context),
        
        ],
      ),
    );
  }

  Widget _buildExtra(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconText(
          icon: Icons.timer,
          text: "10 minutes",
          iconColor: Theme.of(context).primaryColor,
        ),
        IconText(
          icon: Icons.food_bank_sharp,
          text: "2 portions",
          iconColor: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}