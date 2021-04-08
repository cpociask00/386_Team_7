import 'package:flutter/material.dart';
import 'main.dart';

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