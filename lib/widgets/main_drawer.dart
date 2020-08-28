import 'package:flutter/material.dart';
import 'package:flutter_Deli_Meals/screens/categories_screen.dart';
import 'package:flutter_Deli_Meals/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTitle(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildListTitle(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(CategoriesScreen.routeName);
            },
          ),
          buildListTitle(
            'Filters',
            Icons.settings,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
