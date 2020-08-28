import 'package:flutter/material.dart';
import 'package:flutter_Deli_Meals/data/dummy_meals.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/mealDetail';

  Widget buildDetails(Widget child) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.white,
        //  border: Border.all(color: Colors.grey),
      ),
      height: 200,
      width: 500,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
    );
  }

  Widget buildTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String mealID = ModalRoute.of(context).settings.arguments as String;
    var meal = DUMMY_MEALS.firstWhere((element) => element.id == mealID);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.network(
                    meal.imageUrl,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              buildTitle(context, 'Ingredents'),
              buildDetails(ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    elevation: 1,
                    margin: EdgeInsets.all(10),
                    color: Theme.of(context).accentColor,
                    child: Text(meal.ingredients[index]),
                  );
                },
                itemCount: meal.ingredients.length,
              )),
              buildTitle(context, 'Steps'),
              buildDetails(ListView.builder(
                itemBuilder: (ctx, index) {
                  var step = meal.steps[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                        title: Text(step),
                      ),
                      Divider(),
                    ],
                  );
                },
                itemCount: meal.steps.length,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
