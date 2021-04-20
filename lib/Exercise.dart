
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
  String imageurl;
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
    imageurl = imgUrl;
    image = new Image(
      image: AssetImage(imgUrl),
    );
    description = desc;
    direction = dir;
  }

}

class ExerciseRoutine {
  String name;
  DateTime savedDate;
  List<ExerciseInRoutine> exercises;

  ExerciseRoutine() {
    name = '';
    savedDate = null;
    exercises = new List<ExerciseInRoutine>();
  }

  addExercise(ExerciseInRoutine ex) {
    exercises.add(ex);
  }

  removeExercise(ExerciseInRoutine ex) {
    exercises.remove(ex);
  }

  setName(String name) {
    this.name = name;
  }
}

class ExerciseInRoutine {
  Exercise exercise;
  int sets;
  int reps;

  ExerciseInRoutine(Exercise exercise, int sets, int reps) {
    this.exercise = exercise;
    this.sets = sets;
    this.reps = reps;
  }
}
