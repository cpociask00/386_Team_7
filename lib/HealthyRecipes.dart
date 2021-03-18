import 'package:flutter/material.dart';


class HealthyRecipes extends StatefulWidget{
  @override
  _RecipesState createState() => _RecipesState();
}


class _RecipesState extends State<HealthyRecipes> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HealthyRecipes()));

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