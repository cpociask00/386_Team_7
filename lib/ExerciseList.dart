import 'package:flutter/material.dart';
import 'HealthyRecipes.dart';
import 'UserProfile.dart';
import 'GameClass.dart';
import 'main.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';


/// Basic enumeration for difficulty type, could be changed to open ended string
enum Difficulty {
  easy,
  medium,
  hard
}


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

  Exercise.init(String name, Difficulty difficulty, String imgUrl, String desc, String dir) {
    this.name = name;
    difficulty = difficulty;
    image = new Image(
      image: AssetImage(imgUrl),
    );
    description = desc;
    direction = dir;
  }
}

class ExerciseList extends StatefulWidget{
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
      int parameterSeparation = 4;
      for(int index = 0; index < fileData.length; index += parameterSeparation) {
        tempExercise = new Exercise.init(
            fileData[index], Difficulty.easy, fileData[index + 2], fileData[index + 2], fileData[index + 3]);
        allExercises.add(tempExercise);
      }
    });
  }

  void initState() {
    fetchFileData();
    super.initState();
  }

  Widget build(BuildContext context) {
    //Exercise test = new Exercise.init('pushup', Difficulty.easy, 'images/pushup.png', 'yes', 'no');
    print(allExercises.length);
    print(allExercises[0].name);

    return new Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: Center(
        child: Column (
          children: [
            Text(allExercises[1].name),
            Container(
              //child: allExercises[1].image,
            ),
            Text(allExercises[1].description),
            Text(allExercises[1].direction),
            ],
          ),
      ),

      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Olakino', style: TextStyle(
                    fontSize: 20

                ),),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://i.ytimg.com/vi/bKrym5zuOag/maxresdefault.jpg'),
                        fit: BoxFit.cover
                    )
                ),
              ),

              /*
              Profile ListTile
            */
              ListTile(
                  leading: Text('Home'),
                  trailing:Icon(Icons.home),

                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  }
              ),
              ListTile(
                  leading: Text('User Profile'),
                  trailing: Icon(Icons.account_circle),
                  /*
                 This function handles linking the button to the class which contains the
                 page
                */
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));

                  }

              ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => (HealthyRecipes())));


                  }
              ),

              ListTile(
                leading: Text('Exercises'),
                trailing: Icon(Icons.fitness_center),
                /*
               This function handles linking the button to the class which contains
               the page
              */
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExerciseList()));
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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => GameClass()));
                  }
              )

            ],

          )
      ),

    );
  }
}