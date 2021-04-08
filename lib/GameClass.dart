import 'package:flutter/material.dart';
import 'package:olakino/UserProfile.dart';
import 'package:olakino/HealthyRecipes.dart';
import 'main.dart';
import 'package:olakino/ExerciseList.dart';
import 'About.dart';

class GameClass extends StatefulWidget{
  @override
  _GameState createState() => _GameState();
}


class _GameState extends State<GameClass> {
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