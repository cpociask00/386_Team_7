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
  List<Container> currentRoutine;

  initState() {
    currentRoutine = updateCreatedRoutine();
    super.initState();
  }

  /// Creates an array of Containers with the styles below using the exercises created from GlobalExercises
  displayExercises(List<Exercise> allExercises) {
    List<Container> containers = new List();
    for (int index = 0; index < allExercises.length; index += 2) {
      containers.add(
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              getExerciseDisplay(allExercises[index]),
                if (index + 1 < allExercises.length)
                getExerciseDisplay(allExercises[index + 1])
            ],
          )
        )
      );
    }
    return containers;
  }

  Container getExerciseDisplay(Exercise exercise) {
    return Container(
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
          createExercisePopup(context, exercise);
        },
        child: Container(
          width: 150,
          height: 150,
          child: Column(children: [
            Text(exercise.name,
                style: TextStyle(
                  fontSize: 20,
                )),
            Image.asset(
              exercise.imageurl,
              height: 125,
              width: 125,
            ), //
          ]),
        ),
      ),
    );
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
                    updateCreatedRoutine();
                  }),
            ],
          );
        });
      },
    );
  }

  updateCreatedRoutine() {
    List<Container> containers = new List<Container>();
    List<ExerciseInRoutine> exercises = createdRoutine.exercises;
    for (int index = 0; index < exercises.length; index++) {
      containers.add(
        new Container(
          height: 25,
          child: Column(
            children: [

              Image.asset(
                exercises[index].exercise.imageurl,
                height: 35,
                width: 75,
              ),
              Text('Sets: ${exercises[index].sets.toString()}'),
              Text('Reps: ${exercises[index].reps.toString()}'),
              IconButton(
                icon: Icon(Icons.cancel),
                color: Colors.red,
                onPressed: () {
                  createdRoutine.removeExercise(exercises[index]);
                  setState(() {
                    updateCreatedRoutine();
                  });
                },
              ),
            ],
          ),
        ),
      );
    }
    setState(() {
      currentRoutine = containers;
    });
    return containers;
  }


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
                    if (createdRoutine.exercises.length < 1) return;
                    nameThisWorkoutAlert(context);
                  }),
              Container(
                margin: EdgeInsets.all(10),
                height: 125,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: currentRoutine,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Exercises: ',
                  style: TextStyle(fontSize: 45)),
              ),
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
              content: Container(
                  child: TextField(
                onChanged: (newText) {
                  _routineName = newText;
                },
                decoration: InputDecoration(),
              )),
              actions: [
                MaterialButton(
                  child: Text('Create'),
                  onPressed: () {
                    if (_routineName == '') return;
                    createdRoutine.setName(_routineName);
                    GlobalRoutines.addRoutine(createdRoutine);
                    Navigator.of(context).pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ExerciseCreator()));
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
