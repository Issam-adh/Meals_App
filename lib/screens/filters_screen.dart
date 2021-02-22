import 'package:Meals_App/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  
  Widget _buildSwitchListTile(String title, String descriptions, bool currentValue, Function updateValue){
    return SwitchListTile(title: Text(title), value: currentValue, subtitle: Text(descriptions), onChanged: (updateValue) {
             
            },);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text('adjust your meal selection.',
            style: Theme.of(context).textTheme.title,),
          ),
          Expanded(child: ListView(children: <Widget> [
            _buildSwitchListTile('Gluten-Free', 'Only include gluten-free', 
            _glutenFree, 
            (newValue) {
              setState(
                () {
                _glutenFree = newValue;
              },);},),
                _buildSwitchListTile('lactose-Free', 'Only include lactose-free', 
            _lactoseFree, 
            (newValue) {
              setState(
                () {
                _lactoseFree = newValue;
              },);},),
              _buildSwitchListTile('Vegan', 'Only include Vegan meals', 
            _vegan, 
            (newValue) {
              setState(
                () {
                _vegan = newValue;
              },);},)
          ],),)
        ]
      ),
    );
  }
}
