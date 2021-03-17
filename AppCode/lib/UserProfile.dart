import 'package:flutter/material.dart';
import 'package:olakino/HealthyRecipes.dart';


class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_right),
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
                        image: NetworkImage('https://i.ytimg.com/vi/bKrym5zuOag/maxresdefault.jpg'),
                        fit: BoxFit.cover
                    )
                ),
              ),

              /*
              Profile ListTile
            */
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
              )

            ],

          )
      ),

    );
  }
}