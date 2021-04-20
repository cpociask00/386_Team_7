<<<<<<< Updated upstream
import 'package:flutter/material.dart';
import 'main.dart';
import 'Exercise.dart';
import 'ExerciseList.dart';

class ExerciseCreator extends StatefulWidget {
  @override
  _ExercisesCState createState() => _ExercisesCState();
}

class _ExercisesCState extends State<ExerciseCreator> {
  showEachExercise(ExerciseRoutine routine) {
    print(routine.exercises.length);
    List<Container> containers = new List<Container>();
    containers.add(new Container(
      height: 250,
      width: 250,
      margin: EdgeInsets.only(top: 15),
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
          createExercisePopup(context, routine);
        },
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text('${routine.name}', style: TextStyle(fontSize: 25)),
              ),
              width: 250,
              height: 50,
              color: Colors.lightBlueAccent,
            ),
            Text('Exercises: ${routine.exercises.length}'),
          ],
        ),
      ),
    ));
    return containers;
  }

  displayRoutines(List<ExerciseRoutine> routines) {
    List<Container> containers = new List<Container>();
    for (int index = 0; index < routines.length; index++) {
      containers.add(new Container(
        child: Column(
          children: showEachExercise(routines[index]),
        ),
      ));
    }
    return containers;
  }

  displayEachExerciseInRoutine(ExerciseRoutine routine) {
    List<Container> containers = new List<Container>();
    List<ExerciseInRoutine> exercises = routine.exercises;
    for (int index = 0; index < exercises.length; index++) {
      containers.add(new Container(
        child: Column(
            children: [
              Align(alignment: Alignment.centerLeft,
                  child: Text(exercises[index].exercise.name,
                      style: TextStyle(fontSize: 30)),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  exercises[index].exercise.imageurl,
                  width: 100,
                  height: 100,
                ),
              ),
              Align(alignment: Alignment.centerLeft,
                child: Text('Sets: ' + exercises[index].sets.toString(), style: TextStyle(fontSize: 20)),
              ),
              Align(alignment: Alignment.centerLeft,
                  child: Text('Repetitions: ' + exercises[index].reps.toString(), style: TextStyle(fontSize: 20))),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 25, color: Colors.lightBlue),
                  ),
                  color: Colors.black,
                ),
                // child: ...
              )
            ],
          ),
        ),
      );
    }
    return containers;
  }

  createExercisePopup(BuildContext context, ExerciseRoutine routine) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: Text(routine.name, style: TextStyle(fontSize: 45)),
            content: SingleChildScrollView(
              child: Column(children: displayEachExerciseInRoutine(routine)),
            ),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Start Workout'),
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  }),
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Delete'),
                  onPressed: () {
                    GlobalRoutines.removeRoutine(routine);
                    Navigator.of(context).pop(context);
                  }),
            ],
          );
        });
      },
    );
  }

  @override
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExerciseList()));
                  },
                  child: Text("Create New Workout")),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "My Workouts:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              Column(children: displayRoutines(GlobalRoutines.getRoutines())),
            ],
          ),
        ),
      ),
      drawer: GlobalDrawer.getDrawer(context),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'main.dart';
import 'Exercise.dart';
import 'ExerciseList.dart';

class ExerciseCreator extends StatefulWidget {
  @override
  _ExercisesCState createState() => _ExercisesCState();
}

class _ExercisesCState extends State<ExerciseCreator> {
  showEachExercise(ExerciseRoutine routine) {
    print(routine.exercises.length);
    List<Container> containers = new List<Container>();
    containers.add(new Container(
      height: 250,
      width: 250,
      margin: EdgeInsets.only(top: 15),
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
          createExercisePopup(context, routine);
        },
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text('${routine.name}', style: TextStyle(fontSize: 25)),
              ),
              width: 250,
              height: 50,
              color: Colors.lightBlueAccent,
            ),
            Text('Exercises: ${routine.exercises.length}'),
          ],
        ),
      ),
    ));
    return containers;
  }

  displayRoutines(List<ExerciseRoutine> routines) {
    List<Container> containers = new List<Container>();
    for (int index = 0; index < routines.length; index++) {
      containers.add(new Container(
        child: Column(
          children: showEachExercise(routines[index]),
        ),
      ));
    }
    return containers;
  }

  displayEachExerciseInRoutine(ExerciseRoutine routine) {
    List<Container> containers = new List<Container>();
    List<ExerciseInRoutine> exercises = routine.exercises;
    for (int index = 0; index < exercises.length; index++) {
      containers.add(new Container(
        child: Column(
          children: [
            Text(exercises[index].exercise.name),
            Text(exercises[index].sets.toString()),
            Text(exercises[index].reps.toString()),
            exercises[index].exercise.image,
          ],
        ),
      ));
    }
    return containers;
  }

  createExercisePopup(BuildContext context, ExerciseRoutine routine) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            title: Text(routine.name),
            content: SingleChildScrollView(
              child: Column(children: displayEachExerciseInRoutine(routine)),
            ),
            actions: <Widget>[
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Start Workout'),
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  }),
              MaterialButton(
                  elevation: 5.0,
                  child: Text('Delete'),
                  onPressed: () {
                    GlobalRoutines.removeRoutine(routine);
                    Navigator.of(context).pop(context);
                  }),
            ],
          );
        });
      },
    );
  }

  @override
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExerciseList()));
                  },
                  child: Text("Create New Workout")),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "My Workouts",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              Column(children: displayRoutines(GlobalRoutines.getRoutines())),
            ],
          ),
        ),
      ),
      drawer: GlobalDrawer.getDrawer(context),
    );
  }
}
>>>>>>> Stashed changes
