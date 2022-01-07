import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function? saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _allergyEgg = false;
  bool _allergyMilk = false;
  bool _allergyCheese = false;
  bool _allergyFish = false;
  bool _allergyShellFish = false;

  bool _halal = true;
  bool _keto = true;
  bool _seafood = true;
  bool _vegan = true;

  @override
  initState() {
    _allergyEgg = widget.currentFilters['egg']!;
    _allergyMilk = widget.currentFilters['milk']!;
    _allergyCheese = widget.currentFilters['cheese']!;
    _allergyFish = widget.currentFilters['fish']!;
    _allergyShellFish = widget.currentFilters['shellfish']!;

    _halal = widget.currentFilters['halal']!;
    _keto = widget.currentFilters['keto']!;
    _vegan = widget.currentFilters['vegan']!;
    _seafood = widget.currentFilters['seafood']!;

    super.initState();
  }

  late Function updateValue;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(
        description,
      ),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Your Filters'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  final selectedFilters = {
                    'egg': _allergyEgg,
                    'milk': _allergyMilk,
                    'cheese': _allergyCheese,
                    'fish': _allergyFish,
                    'shellfish': _allergyShellFish,
                    'halal': _halal,
                    'vegan': _vegan,
                    'keto': _keto,
                    'seafood': _seafood,
                  };
                  widget.saveFilters!(selectedFilters);
                },
                icon: const Icon(Icons.save))
          ],
        ),
        drawer: MainDrawer(),
        // ignore: prefer_const_constructors
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Allergy with Egg',
                  'Does not include meals with egg',
                  _allergyEgg,
                  (newValue) {
                    setState(() {
                      _allergyEgg = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Allergy with Milk',
                  'Does not include meals with Milk',
                  _allergyMilk,
                  (newValue) {
                    setState(() {
                      _allergyMilk = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Allergy with Cheese',
                  'Does not include meals with Cheese',
                  _allergyCheese,
                  (newValue) {
                    setState(() {
                      _allergyCheese = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Allergy with Fish',
                  'Does not include meals with Fish',
                  _allergyFish,
                  (newValue) {
                    setState(() {
                      _allergyFish = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Allergy with ShellFish',
                  'Does not include meals with ShellFish',
                  _allergyShellFish,
                  (newValue) {
                    setState(() {
                      _allergyShellFish = newValue;
                    });
                  },
                ),
                const Expanded(child: Divider()),
                _buildSwitchListTile(
                  'Halal',
                  'Include meals with Halal category',
                  _halal,
                  (newValue) {
                    setState(() {
                      _halal = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Keto',
                  'Include meals with Keto category',
                  _keto,
                  (newValue) {
                    setState(() {
                      _keto = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Include meals with Vegan category',
                  _vegan,
                  (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Sea Foods',
                  'Include meals with Sea Food category',
                  _seafood,
                  (newValue) {
                    setState(() {
                      _seafood = newValue;
                    });
                  },
                ),
              ],
            ))
          ],
        ));
  }
}
