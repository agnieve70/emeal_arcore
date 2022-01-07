import 'package:emeal_new/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      // ignore: prefer_const_constructors
      leading: Icon(
        icon,
        size: 26,
      ),
      // ignore: prefer_const_constructors
      title: Text(
        title,
        // ignore: prefer_const_constructors
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
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            // ignore: prefer_const_constructors
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            // ignore: deprecated_member_use
            color: Theme.of(context).accentColor,
            // ignore: prefer_const_constructors
            child: Text(
              'Cooking Up!',
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile(
            "Meals",
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed('/category-meals');
            },
          ),
          buildListTile(
            "Filters",
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
