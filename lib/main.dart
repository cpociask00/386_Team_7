import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:olakino/About.dart';
import 'HealthyRecipes.dart';
import 'ExerciseList.dart';
import 'UserProfile.dart';
import 'GameClass.dart';
import 'Exercise.dart';
import 'HomeScreen.dart';

void main() {
  // This is the main function for the Olakino app
  WidgetsFlutterBinding.ensureInitialized();
  GlobalExercises.getExercises(); // Since this function is async it must be called before so the data is ready
  runApp(MyApp());
}

/// The shared drawer/sidebar with out page links
class GlobalDrawer {
  static getDrawer(BuildContext context) {
    return Drawer(
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
                    fit: BoxFit.contain)),
          ),
          ListTile(
              leading: Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHomePage()));
              }),
          ListTile(
              leading: Text('User Profile'),
              trailing: Icon(Icons.account_circle),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              }),
          ListTile(
            leading: Text('Healthy Recipes'),
            trailing: Icon(Icons.fastfood),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HealthyRecipes()));
            },
          ),
          ListTile(
            leading: Text('Exercises'),
            trailing: Icon(Icons.fitness_center),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExerciseList()));
            },
          ),
          ListTile(
            leading: Text('Exercise RPG'),
            trailing: Icon(Icons.videogame_asset),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GameClass()));
            },
          ),
          ListTile(
            leading: Text('About Us'),
            trailing: Icon(Icons.android),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
        ],
      ),
    );
  }
}
/// The shared exercises user for display across the app
class GlobalExercises {
  static List<Exercise> allExercises;

  static getExercises() async {
    if (allExercises == null) {
      allExercises = new List<Exercise>();
      List<String> _fileData;
      Exercise _tempExercise;
      String _textContent = await rootBundle.loadString('textFiles/exercises');
      _fileData = _textContent.split('; ');

      int parameterSeparation = 4; // # of parameters for each object
      for (int index = 0; index < _fileData.length; index += parameterSeparation) {
        _tempExercise = new Exercise.init(_fileData[index], Difficulty.easy,
            _fileData[index + 1], _fileData[index + 2], _fileData[index + 3]);
        allExercises.add(_tempExercise);
      }
    }
    return allExercises;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Olakino',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}


