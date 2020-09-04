import 'package:flutter/material.dart';
import 'package:flutter_Deli_Meals/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _lactoseFree = false;
  var _veganOnly = false;
  var _vegetarianOnly = false;

  Widget _buildSwitchTitle(String title, String subTitle, bool currentValue,
      Function onchangeHandler) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      value: currentValue,
      onChanged: onchangeHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Adjust you meals Preference',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                _buildSwitchTitle(
                  'Gluten-Free Meals Only',
                  'Display Gluten-Free Meals Only',
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                _buildSwitchTitle(
                  'Lactose-Free Meals Only',
                  'Display Lactose-Free Meals Only',
                  _lactoseFree,
                  (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                ),
                _buildSwitchTitle(
                  'Vegetarian Meals Only',
                  'Display Vegetarian Meals Only',
                  _vegetarianOnly,
                  (newValue) {
                    setState(() {
                      _vegetarianOnly = newValue;
                    });
                  },
                ),
                _buildSwitchTitle(
                  'Vegan Meals Only',
                  'Display Vegan Meals Only',
                  _veganOnly,
                  (newValue) {
                    setState(() {
                      _veganOnly = newValue;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
