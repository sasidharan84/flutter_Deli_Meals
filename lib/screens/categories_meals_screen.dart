import 'package:flutter/material.dart';
import 'package:flutter_Deli_Meals/widgets/meal_item.dart';
import '../data/dummy_meals.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meals';

  /* final String categoryID;
  final String categoryTitle;

  CategoriesMealsScreen({
    @required this.categoryID,
    @required this.categoryTitle,
  }); */

  @override
  Widget build(BuildContext context) {
    var routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(categoryID))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          var meal = categoryMeals[index];
          return MealItem(
            id: meal.id,
            title: meal.title,
            imageUrl: meal.imageUrl,
            duration: meal.duration,
            affordability: meal.affordability,
            complexity: meal.complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
