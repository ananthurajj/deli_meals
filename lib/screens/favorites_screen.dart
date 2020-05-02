import 'package:deli_meals/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
          child: Text('You have no favorites yet - start adding some'));
    }else{
      return ListView.builder(
        itemBuilder: (ctx, index) => MealItem(
          id: favoriteMeals[index].id,
          title: favoriteMeals[index].title,
          imageUrl: favoriteMeals[index].imageUrl,
          duration: favoriteMeals[index].duration,
          complexity: favoriteMeals[index].complexity,
          affordability: favoriteMeals[index].affordability,
        //  removeItem: _removeMeal,
        ),
        itemCount: favoriteMeals.length,
      );
    }
  }
}
