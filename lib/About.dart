import 'package:flutter/material.dart';
import 'ExerciseList.dart';
import 'UserProfile.dart';
import 'GameClass.dart';
import 'main.dart';
import 'HealthyRecipes.dart';
import 'HomeScreen.dart';

class About extends StatefulWidget{
  @override
  _AboutState createState() => _AboutState();
}


class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Olakino'),
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
                        image: NetworkImage(
                            'https://i.ytimg.com/vi/bKrym5zuOag/maxresdefault.jpg'),
                        fit: BoxFit.cover
                    )
                ),
              ),

              /*
              Profile ListTile
            */
              ListTile(
                  leading: Text('Home'),
                  trailing: Icon(Icons.home),

                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
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
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => (HealthyRecipes())));
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
                  }

              ),

              ListTile(
                  leading: Text('About'),
                  trailing: Icon(Icons.android),

                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        About()));
                  }

              )


            ],

          )
      ),

    );
  }
}