import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';

class NavigationItem {
  final String title;
  final IconData icon;

  NavigationItem({
    @required this.title,
    @required this.icon,
  });
}

List<NavigationItem> navItems = [
  NavigationItem(title: 'Recipes', icon: Icons.food_bank),
  NavigationItem(title: 'Favourite', icon: Icons.favorite),
  NavigationItem(title: 'News', icon: Icons.new_releases),
  NavigationItem(title: 'Shoplist', icon:Icons.shopping_bag),
  NavigationItem(title: 'Profile', icon: Icons.person),
];
