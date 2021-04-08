import 'package:flutter/material.dart';
import 'ExerciseList.dart';
import 'UserProfile.dart';
import 'GameClass.dart';
import 'main.dart';
import 'About.dart';

class HealthyRecipes extends StatefulWidget{
  @override
  _RecipesState createState() => _RecipesState();
}


class _RecipesState extends State<HealthyRecipes> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Olakino'),
      ),

      drawer: GlobalDrawer.getDrawer(context)
    );
  }
}