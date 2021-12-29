import 'package:emeal_new/models/meal.dart';
import 'package:emeal_new/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.affordability,
    required this.complexity,
    required this.duration,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Expensive';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                // ignore: prefer_const_constructors
                ClipRRect(
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.only(
                    // ignore: prefer_const_constructors
                    topLeft: Radius.circular(15),
                    // ignore: prefer_const_constructors
                    topRight: Radius.circular(15),
                  ),
                  // child: Image.asset(src)
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        title,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ))
              ],
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.schedule,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$duration min')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.work,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(complexityText)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(affordabilityText)
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
