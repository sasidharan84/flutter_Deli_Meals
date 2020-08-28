import 'package:flutter/material.dart';
import 'package:flutter_Deli_Meals/screens/categories_screen.dart';
import 'package:flutter_Deli_Meals/screens/favourites_screen.dart';
import 'package:flutter_Deli_Meals/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Meals'},
    {'page': FavouritesScreen(), 'title': 'Your Favourites'},
  ];

  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('Categories'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text('Favourites'),
            ),
          ]),
    );
  }

  void _selectPage(int value) {
    setState(() {
      _selectedPageIndex = value;
    });
  }
}
