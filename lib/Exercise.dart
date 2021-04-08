import 'package:flutter/material.dart';

/// Basic enumeration for difficulty type, could be changed to open ended string
enum Difficulty { easy, medium, hard }

class ExerciseBodyArea {
  String bodyPart;
}

/// Datatype for Excercise containing details like name, image, description for display
class Exercise {
  String name;
  Difficulty difficulty;
  Image image;
  var bodyAreas = new List();
  int bodyAreaCount;
  String description;
  String direction;
  // int caloriesBurnPer?

  Exercise() {
    name = description = direction = '';
    difficulty = Difficulty.easy;
  }

  Exercise.init(String name, Difficulty difficulty, String imgUrl, String desc,
      String dir) {
    this.name = name;
    difficulty = difficulty;
    image = new Image(
      image: AssetImage(imgUrl),
    );
    description = desc;
    direction = dir;
  }
}
