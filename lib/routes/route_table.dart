import 'package:flutter/cupertino.dart';
import 'package:flutter_Deli_Meals/screens/categories_meals_screen.dart';
import 'package:flutter_Deli_Meals/screens/categories_screen.dart';
import 'package:flutter_Deli_Meals/screens/filters_screen.dart';
import 'package:flutter_Deli_Meals/screens/meal_detail_screen.dart';
import 'package:flutter_Deli_Meals/screens/tabs_screen.dart';

class RouteTable {
  static const landingPage = CategoriesScreen.routeName;

  static Map<String, Widget Function(BuildContext)> routes = {
    TabsScreen.routeName: (ctx) => TabsScreen(),
    CategoriesMealsScreen.routeName: (ctx) => CategoriesMealsScreen(),
    MealDetail.routeName: (ctx) => MealDetail(),
    FiltersScreen.routeName: (ctx) => FiltersScreen(),
  };
}
