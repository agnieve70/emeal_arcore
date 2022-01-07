import 'package:emeal_new/widgets/main_drawer.dart';

import '../widgets/main_drawer.dart';
import './favorites_screen.dart';
import './categories_screen.dart';

import 'package:emeal_new/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  final List<Meal> availableMeals;

  CategoryMealsScreen(this.availableMeals);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorite',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final categoryMeals = widget.availableMeals.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals"),
      ),
      drawer: MainDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl);
        },
        itemCount: categoryMeals.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black87,
          currentIndex: _selectedPageIndex,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              // ignore: prefer_const_constructors
              icon: const Icon(Icons.category),
              label: 'Categories',
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              label: 'Favorites',
            ),
          ]),
    );
  }
}
