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
  final String sauce;
  final double scale;

  final bool isHalal;
  final bool isKeto;
  final bool isSeaFood;
  final bool isVegan;

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
      required this.sauce,
      required this.scale,
      required this.isHalal,
      required this.isKeto,
      required this.isSeaFood,
      required this.isVegan,
      required this.isAllergyEgg,
      required this.isAllergyMilk,
      required this.isAllergyCheese,
      required this.isAllergyFish,
      required this.isAllergyShellFish});
}
