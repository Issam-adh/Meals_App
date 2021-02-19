import 'package:Meals_App/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters:'),
      ),
    );
  }
}
