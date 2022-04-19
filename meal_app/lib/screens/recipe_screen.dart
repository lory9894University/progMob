import 'package:flutter/material.dart';

import '../models.dart';

class RecipeScreen extends StatelessWidget {
  static const String routeName = '/recipe-screen';

  @override
  Widget build(BuildContext context) {
    final Meal _meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(_meal.title),
      ),
      body: Text(_meal.steps.toString()),
    );
  }
}
