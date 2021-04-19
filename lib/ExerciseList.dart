import 'package:flutter/material.dart';
import 'main.dart';
import 'Exercise.dart';
import 'ExerciseCreator.dart';

class ExerciseList extends StatefulWidget {
  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<ExerciseList> {
  ExerciseRoutine createdRoutine = new ExerciseRoutine();
  double _currentSetValue = 3;
  double _currentRepValue = 8;
  int _setVal = 3;
  int _repVal = 8;
  String _routineName = '';

  /// Creates an array of Containers with the styles below using the exercises created from GlobalExercises
  displayExercises(List<Exercise> allExercises) {
    List<Container> containers = new List();
    for (int index = 0; index < allExercises.length; index++) {
      containers.add(
        Container(
          margin: EdgeInsets.only(left: 0, top: 15, right: 0, bottom: 0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
  createExercisePopup(BuildContext context, Exercise exercise) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: Text(exercise.name),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  exercise.image, //Image
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(exercise.description, style: TextStyle()),
                  ),
                  Text('Sets: $_currentSetValue'),
                  Slider(
                    min: 1,
                    max: 5,
                    divisions: 4,
                    value: _currentSetValue,
                    label: _currentSetValue.toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSetValue = value;
                        _setVal = _currentSetValue.toInt();
                      });
                    },
                  ),
                  Text('Repetitions: $_currentRepValue'),
                  Slider(
                    min: 1,
                    max: 20,
                    divisions: 19,
                    value: _currentRepValue,
                    label: _currentRepValue.toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentRepValue = value;
                        _repVal = _currentRepValue.toInt();
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(exercise.direction),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Add'),
                  onPressed: () {
                    createdRoutine.addExercise(
                        new ExerciseInRoutine(exercise, _setVal, _repVal));
                    Navigator.of(context).pop(context);
                  }),
            ],
          );
        });
      },
    );
  }

<<<<<<< Updated upstream
  @override
=======


>>>>>>> Stashed changes
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                  child: Text('Create Workout'),
                  onPressed: () {
                    if (createdRoutine.exercises.length < 1)
                      return;
                    nameThisWorkoutAlert(context);
                  }),
              Column(children: displayExercises(GlobalExercises.allExercises)),
            ],
          ),
        ),
      ),
      drawer: GlobalDrawer.getDrawer(context),
    );
  }

  /// The alert dialog box that appears when user click Create Workout button
  nameThisWorkoutAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: Text('Name This Workout'),
              content: Container(child: TextField(
                onChanged: (newText) { _routineName = newText; },
                decoration: InputDecoration(),)),
              actions: [
                MaterialButton(
                  child: Text('Create'),
                  onPressed: () {
                    if (_routineName == '')
                      return;
                    createdRoutine.setName(_routineName);
                    GlobalRoutines.addRoutine(createdRoutine);
                    Navigator.of(context).pop(context);
                  },
                ),
                MaterialButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                ),
              ],
            );
          });
        });
  }
}