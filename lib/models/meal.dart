import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String threeDObjUrl;
  final String details;
  final String price;
  final String sauce;
  final double scale;

  final bool isHalal;
  final bool isKeto;
  final bool isSeaFood;
  final bool isVegan;
  final bool isDessert;

  final bool isFiftyBelow;
  final bool isFiftyToOneHundred;
  final bool isOneHundredToOneFifty;
  final bool isOneFiftyToTwoHundred;
  final bool isTwoHundredAbove;

  final bool isAllergyEgg;
  final bool isAllergyMilk;
  final bool isAllergyCheese;
  final bool isAllergyFish;
  final bool isAllergyShellFish;

  const Meal(
      {required this.id,
      required this.categories,
      required this.title,
      required this.threeDObjUrl,
      required this.imageUrl,
      required this.details,
      required this.price,
      required this.sauce,
      required this.scale,
      required this.isHalal,
      required this.isKeto,
      required this.isSeaFood,
      required this.isVegan,
      required this.isDessert,
      required this.isFiftyBelow,
      required this.isFiftyToOneHundred,
      required this.isOneHundredToOneFifty,
      required this.isOneFiftyToTwoHundred,
      required this.isTwoHundredAbove,
      required this.isAllergyEgg,
      required this.isAllergyMilk,
      required this.isAllergyCheese,
      required this.isAllergyFish,
      required this.isAllergyShellFish});
}
