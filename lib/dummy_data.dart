import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'HALAL',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'SEA FOODS',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'VEGAN',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'KETO',
    color: Colors.amber,
  ),
];

// ignore: unnecessary_const
const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Salmon Empanadas',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/salmon_empanadas.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Salmon_Empanadas.glb?raw=true',
    details: 'Salmon Fillets, Pie Crust, Fresh Parsely and Fresh Basil',
    sauce:
        'Butter, Flour, dry mustard, salt, pepper, milk, shredded gruyere cheese',
    scale: 1.4,
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: false,
    isAllergyEgg: true,
    isAllergyMilk: true,
    isAllergyCheese: true,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
      'c4',
    ],
    title: 'Roasted Chicken',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/roasted_chicken.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/roasted_chicken.glb?raw=true',
    details: 'Salmon Fillets, Pie Crust, Fresh Parsely and Fresh Basil',
    sauce:
        'Butter, Flour, dry mustard, salt, pepper, milk, shredded gruyere cheese',
    scale: 0.2,
    isHalal: true,
    isKeto: true,
    isSeaFood: false,
    isVegan: false,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Chicken Meal',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/chicken_meal.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Chicken_Meal.glb?raw=true',
    details: 'fried rice with egg, fried chicken, lemon, onion, and ketchup',
    sauce: '',
    scale: 1.2,
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: false,
    isAllergyEgg: true,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Croissant Norweski',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/croissant_norweski.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/croissant_norweski.glb?raw=true',
    details: 'croissant, cocumber, tomato, bacon cheese, letuce, ',
    sauce: '',
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: false,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
    scale: 0.1,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c1',
      'c4',
    ],
    title: 'Kebab',
    imageUrl:
        'https://raw.githubusercontent.com/agnieve70/3dObjects/main/kebab.png',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/kebab.glb?raw=true',
    details:
        'Lamb and mutton, ground meat, onion, garlic, chili pepper, black pepper',
    sauce: '',
    scale: 0.1,
    isHalal: true,
    isKeto: true,
    isSeaFood: false,
    isVegan: false,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c1',
      'c4',
    ],
    title: 'Florence Steak',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Florence_Steak.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/florence_steak.glb?raw=true',
    details:
        'T-bone or porterhouse steak, rosemary, sage, olive oil, salt and black pepper',
    sauce: '',
    scale: 0.7,
    isHalal: true,
    isKeto: true,
    isSeaFood: false,
    isVegan: false,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c4',
    ],
    isHalal: false,
    isKeto: true,
    isSeaFood: false,
    isVegan: false,
    title: 'Togsilog',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/TOSILOG.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Tosilog.glb?raw=true',
    details:
        'Sinangag is garlic fried rice at the bottom. Next layer is the tocino (the cured pork belly). Top it off with a fried egg. Cucumber tomato relish on the side',
    sauce: '',
    scale: 0.7,
    isAllergyEgg: true,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c1',
    ],
    title: 'Meal1',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Meal1.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Meal1.glb?raw=true',
    details: 'Bread, meat or sausage, cheese, eggs, veggies, herbs, salad',
    sauce: '',
    scale: 0.1,
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: false,
    isAllergyEgg: true,
    isAllergyMilk: false,
    isAllergyCheese: true,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm9',
    categories: ['c1', 'c3'],
    title: 'Meal2',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Meal2.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Meal2.glb?raw=true',
    details:
        'Rhein bread with a layer of butter, and cheese on the top or the side',
    sauce: '',
    scale: 0.1,
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: true,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: true,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c1', 'c3'],
    title: 'Vegie Bowl',
    imageUrl:
        'https://raw.githubusercontent.com/agnieve70/3dObjects/main/vegiebowl.png',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/vegiebowl.glb?raw=true',
    details: 'Carrots, broccoli, potato, green beans, corn',
    sauce: '',
    scale: 0.1,
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: true,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c1',
    ],
    title: 'Meal3',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Meal3.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Meal3.glb?raw=true',
    details: 'Bavarian bread rolls, tomato, cheese, cucumber, sesame seed',
    sauce: '',
    scale: 0.1,
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: false,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: true,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm12',
    categories: ['c1', 'c3'],
    title: 'Meal4',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Meal4.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Meal4.glb?raw=true',
    details: 'Strawberry, bread, fig, glaze',
    sauce: 'Cream cheese, butter, powdered sugar, milk, vanilla extract',
    scale: 0.1,
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: true,
    isAllergyEgg: false,
    isAllergyMilk: true,
    isAllergyCheese: true,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm13',
    categories: ['c1', 'c2'],
    title: 'Sashimi Plate',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/sashimi_plate.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/sashimi_plate.glb?raw=true',
    details: 'Strawberry, bread, fig, glaze',
    sauce: '',
    scale: 0.1,
    isHalal: true,
    isKeto: false,
    isSeaFood: true,
    isVegan: false,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: true,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm14',
    categories: ['c1', 'c2'],
    title: 'Unagi Bento',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/unagi_bento.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/unagi_bento.glb?raw=true',
    details: 'unagi(eel) Fillets, unagi sauce, steamed rice',
    sauce: '',
    scale: 1.4,
    isHalal: true,
    isKeto: false,
    isSeaFood: true,
    isVegan: false,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: true,
  ),
  Meal(
    id: 'm15',
    categories: ['c1', 'c3'],
    title: 'Cinnamon Pastry',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/cinnamon.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/cinnamon.glb?raw=true',
    details:
        'Butter, Flour, Cream cheese, Baker’s yeast, Sugar, Egg, Powdered sugar, Brown sugar, Grounded cinnamon',
    sauce: '',
    scale: 0.11,
    isHalal: true,
    isKeto: false,
    isSeaFood: false,
    isVegan: true,
    isAllergyEgg: true,
    isAllergyMilk: false,
    isAllergyCheese: true,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm16',
    categories: ['c1', 'c3', 'c4'],
    title: 'Icecream',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/icecream.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Icecream.glb?raw=true',
    details:
        'Cream, Milk, Vanilla, Egg, Condensed Milk, Sugar, Vanilla Extract',
    sauce: '',
    scale: 0.1,
    isHalal: true,
    isKeto: true,
    isSeaFood: false,
    isVegan: true,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
  Meal(
    id: 'm17',
    categories: ['c1', 'c3', 'c4'],
    title: 'Belgian Waffle',
    imageUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/Belgian_Waffle.png?raw=true',
    threeDObjUrl:
        'https://github.com/agnieve70/3dObjects/blob/main/belgian_waffle.glb?raw=true',
    details: 'Waffle, chocolate, Strawberry, blackberries',
    sauce: '',
    scale: 0.1,
    isHalal: true,
    isKeto: true,
    isSeaFood: false,
    isVegan: true,
    isAllergyEgg: false,
    isAllergyMilk: false,
    isAllergyCheese: false,
    isAllergyFish: false,
    isAllergyShellFish: false,
  ),
];
