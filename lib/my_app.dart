import 'package:flutter/material.dart';
import 'screens/recipes/recipes_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        canvasColor: Colors.teal,
        fontFamily: 'Montserrat',
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
              headline5: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
      ),
      home: Recipes(),
    );
  }
}
