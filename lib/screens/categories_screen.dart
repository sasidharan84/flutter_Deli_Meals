import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../data/dummy_catagories.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((e) => CategoryItem(
                id: e.id,
                title: e.title,
                color: e.color,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
