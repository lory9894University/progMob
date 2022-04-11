import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deli Meal"),
      ),
      body: GridView(
        //TODO: esiste il gridview ed il listview builder, per avere una creazione dinamica (numero di child incognito)
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((e) => CategoryItem(e.id, e.title, e.color))
            .toList(),
        padding: const EdgeInsets.all(25),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String name, id;
  final Color color;

  CategoryItem(this.id, this.name, this.color);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('/category-meals', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      splashFactory: InkRipple.splashFactory,
      child: Container(
        alignment: Alignment.center,
        child: Text(name),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(.7),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
