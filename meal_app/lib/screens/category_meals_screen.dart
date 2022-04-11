import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/models.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _categoryId = ModalRoute.of(context)?.settings.arguments as String;
    Category _category =
        DUMMY_CATEGORIES.firstWhere((element) => element.id == _categoryId);
    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
      ),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
