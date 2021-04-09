import 'package:flutter/material.dart';
import 'main.dart';
import 'ExerciseList.dart';
import 'exercise.dart';


class Diary extends StatefulWidget{
  @override
  _DiaryState createState() => _DiaryState();
}


class _DiaryState extends State<Diary> {
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