import 'package:flutter/material.dart';
import 'main.dart';

class HealthyRecipes extends StatefulWidget{
  @override
  _RecipesState createState() => _RecipesState();
}


class _RecipesState extends State<HealthyRecipes> {

  String dessert = "images/Dessert.png";
  String entree = "images/entree.png";
  String drink = "images/drink.png";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [ 
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(offset: Offset(10,10), spreadRadius: 10)
                  ]
              ),
              margin:  EdgeInsets.only(top: 20),
              child:

              // entree
              ListTile(
                  title: 
                  Text("Entree", style:
                  TextStyle(fontWeight:FontWeight.bold,
                  fontSize:  20),),
                  leading: Image.asset("images/entree.png") ,
              )
            ),

            // Salad
            Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(offset: Offset(10,10), spreadRadius: 10)
                    ]
                ),
                margin:  EdgeInsets.only(top: 20),
                child: ListTile(
                    title: Text("Side", style: TextStyle(
                    fontWeight: FontWeight.bold,
                     fontSize:  20),),
                     leading: Image.network("https://cdn4.iconfinder.com/data/icons/food-beverages-outline-1/508/SaladBowl-512.png") ,
                )

            ),

            //Dessert
            Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(offset: Offset(10,10), spreadRadius: 10)
                    ]
                ),
                margin:  EdgeInsets.only(top: 20),
                child: ListTile(
                  title: Text("Dessert", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:  20),),
                  leading: Image.asset(dessert),
                )

            ),

            // Drink
            Container(
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(offset: Offset(10,10), spreadRadius: 10)
                    ]
                ),
                margin:  EdgeInsets.only(top: 20),
                child: ListTile(
                  title: Text("Beverage", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:  20),),
                  leading: Image.asset(drink) ,
                )

            ),

          ],

        )

      ),
      appBar: AppBar(
        title: Text('Olakino'),
      ),
      drawer: GlobalDrawer.getDrawer(context)

    );
  }
}