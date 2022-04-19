import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/models.dart';
import 'package:meal_app/screens/recipe_screen.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    String _categoryId = ModalRoute.of(context)?.settings.arguments as String;
    Category _category =
        DUMMY_CATEGORIES.firstWhere((element) => element.id == _categoryId);
    List<Meal> _meals = DUMMY_MEALS
        .where((element) => element.categories.contains(_categoryId))
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(_category.title),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return MealItem(_meals[index]);
            },
            itemCount: _meals.length));
  }
}

class MealItem extends StatelessWidget {
  final Meal _meal;

  MealItem(this._meal);

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(RecipeScreen.routeName, arguments: _meal);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      splashFactory: InkRipple.splashFactory,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    _meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100, maxWidth: 250),
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      _meal.title,
                      style: const TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  bottom: 20,
                  right: 0,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text('${_meal.duration.toString()} min')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text('${_meal.complexity.name}')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6),
                      Text('${_meal.affordability.name}')
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
