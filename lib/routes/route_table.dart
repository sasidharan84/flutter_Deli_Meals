import 'package:flutter/cupertino.dart';
import 'package:flutter_Deli_Meals/widgets/categories_meals_screen.dart';
import 'package:flutter_Deli_Meals/widgets/categories_screen.dart';

class RouteTable {
  static const landingPage = CategoriesScreen.routeName;

  static Map<String, Widget Function(BuildContext)> routes = {
    CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
    CategoriesMealsScreen.routeName: (ctx) => CategoriesMealsScreen(),
  };
}
