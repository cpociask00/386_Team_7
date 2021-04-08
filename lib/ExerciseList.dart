import 'package:flutter/material.dart';
import 'HealthyRecipes.dart';
import 'UserProfile.dart';
import 'GameClass.dart';
import 'main.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'About.dart';

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

class ExerciseList extends StatefulWidget {
  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<ExerciseList> {
  @override
  List<String> fileData;
  Exercise tempExercise;
  List<Exercise> allExercises = new List();

  /// Opens the file data for exercises.txt and loads it into a string
  /// The String is separated by '; ' for different parameters of exercises
  /// Objects are created for every exercise in the text file
  fetchFileData() async {
    String textContent = await rootBundle.loadString('textFiles/exercises');
    fileData = textContent.split('; ');

    setState(() {
      int parameterSeparation = 4; // # of parameters for each object
      for (int index = 0;
          index < fileData.length;
          index += parameterSeparation) {
        tempExercise = new Exercise.init(fileData[index], Difficulty.easy,
            fileData[index + 1], fileData[index + 2], fileData[index + 3]);
        allExercises.add(tempExercise);
      }
    });
  }

  void initState() {
    fetchFileData();
    super.initState();
  }

  /// Creates an array of Containers with the styles below using the exercises created from fetchFileData()
  createExercises() {
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
            boxShadow: [BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),

            ),
          ]
          ),
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

  createExercisePopup(BuildContext context, Exercise exercise) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text(exercise.name),
              content: Column(
                  children: <Widget>[
                    exercise.image, //Image
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(exercise.description,
                        style: TextStyle()),
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
    return new Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: Center(
        child: Column(children: createExercises()),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Olakino',
              style: TextStyle(fontSize: 20),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.ytimg.com/vi/bKrym5zuOag/maxresdefault.jpg'),
                    fit: BoxFit.cover)),
          ),

          /*
              Profile ListTile
            */
          ListTile(
              leading: Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              }),
          ListTile(
              leading: Text('User Profile'),
              trailing: Icon(Icons.account_circle),
              /*
                 This function handles linking the button to the class which contains the
                 page
                */
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              }),
          // recipes
          ListTile(
              leading: Text('Healthy Recipes'),
              trailing: Icon(Icons.fastfood),

              /*
               This function handles linking the button to the class which contains
               the page
              */
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (HealthyRecipes())));
              }),

          ListTile(
            leading: Text('Exercises'),
            trailing: Icon(Icons.fitness_center),
            /*
               This function handles linking the button to the class which contains
               the page
              */
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExerciseList()));
            },
          ),

          ListTile(
              leading: Text('Exercise RPG'),
              trailing: Icon(Icons.videogame_asset),

              /*
                This function handles linking the button to the class which
                 contains the page
              */

              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GameClass()));
              }),
          ListTile(
              leading: Text('About Us'),
              trailing: Icon(Icons.android),
              /*
                 This function handles linking the button to the class which contains the
                 page
                */
              onTap: () {
                // this clears the page so it can be changed to another
                Navigator.pop(context);
                // this pushes the content of a particular page, in this case the Profile class
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              })
        ],
      )),
    );
  }
}
