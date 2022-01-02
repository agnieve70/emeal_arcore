import 'package:emeal_new/models/meal.dart';
import 'package:emeal_new/screens/categories_screen.dart';
import 'package:emeal_new/screens/category_meals_screen.dart';
import 'package:emeal_new/screens/filters_screen.dart';
import 'package:emeal_new/screens/modelview_screen.dart';
import 'package:emeal_new/screens/qrscan_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:emeal_new/screens/login_screen.dart';
import 'package:emeal_new/screens/meal_detail_screen.dart';
import 'package:emeal_new/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'dummy_data.dart';
import './models/meal.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters["gluten"] == true && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] == true && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan'] == true && !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian'] == true && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMeal',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // ignore: deprecated_member_use
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(225, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            // ignore: prefer_const_constructors
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            // ignore: prefer_const_constructors
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            // ignore: prefer_const_constructors
            subtitle1: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      routes: {
        '/': (ctx) => const LoginScreen(),
        TabsScreen.routeName: (ctx) => TabsScreen(),
        QRViewScreen.routeName: (ctx) => QRViewScreen(),
        ObjectGesturesWidget.routeName: (ctx) => ObjectGesturesWidget(),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
      },
    );
  }
}
