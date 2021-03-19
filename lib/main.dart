import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HealthyRecipes.dart';
import 'ExerciseList.dart';
import 'HealthyRecipes.dart';
import 'UserProfile.dart';
import 'GameClass.dart';

void main() {
  // This is the main function for the Olakino app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  Timer clockUpdateTimer;
  DateTime time = DateTime.now();
  DateTime currentDate;
  String date;
  String hour, min;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
    currentDate = DateTime(time.year, time.month, time.day);
    date = '${getMonth(currentDate)} , ${time.day}';
    hour = '${time.hour}';
    min = reformatMinute(time);
    clockUpdateTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      updateTimer();
    });
    //TODO: Implement landing page
  }

  /// Updates the current clock time
  void updateTimer() {
    time = DateTime.now();
    setState(() {
      currentDate = DateTime(time.year, time.month, time.day);
      date ='${getMonth(time)}, ${time.day}';
      hour = '${time.hour}';
      min = reformatMinute(time);
    });
  }

  /// Returns a string with the correct month name using input date
  String getMonth(DateTime date) {
    switch (date.month)
    {
      case 1: return 'January'; break;
      case 2: return 'February'; break;
      case 3: return 'March'; break;
      case 4: return 'April'; break;
      case 5: return 'May'; break;
      case 6: return 'June'; break;
      case 7: return 'July'; break;
      case 8: return 'August'; break;
      case 9: return 'September'; break;
      case 10: return 'October'; break;
      case 11: return 'November'; break;
      case 12: return 'December'; break;
      default: throw Exception('Date month is not 1-12'); break;
    }
  }

  /// Returns a string with a 0 infront if a single digit minute, for use with the displayed minutes on home page
  String reformatMinute(DateTime date) {
    if (date.minute < 10)
      return '0${date.minute}';
    else
      return '${date.minute}';
  }

  @override
  // builds the view
  Widget build(BuildContext context) {
    // scaffold generates the UI
    return new Scaffold(
      // App bar is the top most bar of the app
      appBar: AppBar(
        title: Text('Olakino'),
      ),

      body: Column(
          children: [
            Center (
              child: Text('$date',
                style: TextStyle(fontSize: 40)),
            ),
            Center (
              child: Text('$hour:$min',
                style: TextStyle(fontSize: 40)),
            ),
          ],
      ),

      // This is the menu drawer
      drawer: Drawer(
          // ListTitle is inherited by ListTitle
          child: ListView(
        //
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

          /*
              Profile ListTile
            */
          ListTile(
              leading: Text('Home'),
              trailing: Icon(Icons.home),
              /*
                 This function handles linking the button to the class which contains the
                 page
                */
              onTap: () {
                // this clears the page so it can be changed to another
                Navigator.pop(context);
                // this pushes the content of a particular page, in this case the Profile class
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
                // this clears the page so it can be changed to another
                Navigator.pop(context);
                // this pushes the content of a particular page, in this case the Profile class
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HealthyRecipes()));
            },
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExerciseList()));
            },
          ),

          // Game aspect
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
              })
        ],
      )),
    );
  }
}




