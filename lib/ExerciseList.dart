import 'package:flutter/material.dart';
import 'main.dart';
import 'Exercise.dart';

class ExerciseList extends StatefulWidget {
  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<ExerciseList> {
  @override

  /// Creates an array of Containers with the styles below using the exercises created from fetchFileData()
  displayExercises(List<Exercise> allExercises) {
    List<Container> containers = new List();
    for (int index = 0; index < allExercises.length; index++) {
      containers.add(
        Container(
          margin: EdgeInsets.only(left: 0, top: 15, right: 0, bottom: 0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ]),
          child: GestureDetector(
            onTap: () {
              createExercisePopup(context, allExercises[index]);
            },
            child: Container(
              width: 250,
              height: 250,
              child: Column(children: [
                allExercises[index].image, // Image
                Text(allExercises[index].name),
              ]),
            ),
          ),
        ),
      );
    }
    return containers;
  }

  /// Creates the popup for each exercise in the middle of displayExercises()
  createExercisePopup(BuildContext context, Exercise exercise) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text(exercise.name),
              content: Column(children: <Widget>[
                exercise.image, //Image
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(exercise.description, style: TextStyle()),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(exercise.direction),
                ),
              ]),
              actions: <Widget>[
                MaterialButton(
                    elevation: 1000,
                    child: Text('Favorite'),
                    onPressed: () {
                      Navigator.of(context).pop(context);
                    }),
                MaterialButton(
                    elevation: 1000,
                    child: Text('Add to Diary'),
                    onPressed: () {
                      Navigator.of(context).pop(context);
                    }),
              ]);
        });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              children: displayExercises(GlobalExercises.allExercises)),
        ),
      ),
      drawer: GlobalDrawer.getDrawer(context),
    );
  }
}
