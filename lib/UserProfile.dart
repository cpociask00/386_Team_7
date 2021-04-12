import 'package:flutter/material.dart';
import 'main.dart';


class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {

  //  temporary lists in place of data that will be stored in the database
  var username = ["Jake Stuck", "Kyle Mo", "Kaila Iglesias",
    "Carson Posciask", "Johnathan Gomez", "Ricardo McCrary"];
  var handles = ["@StuckInsideJake", "@KyleMo", "@JohnathanGomez", "@RicardoMcCrary", "@KailaIglesias"];
  var profPic = ["images/Hawaii.jpg", "", "", "", "", "",];
  var height = ["6'2", "5'6", "5'2", "6'3","5'4"];
  var weight = ["155 pounds", "600 pounds", "220 pounds", "135 pounds", "120 pounds"];
  var location = ["Flagstaff, AZ"];
  var userlvlstr = [" level 1"];


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: AppBar(
          title: Text('Olakino'),
        ),
        drawer: GlobalDrawer.getDrawer(context),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            profPic[0]
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    alignment: Alignment(0.0,2.5),
                    child: CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      child: Text('JS'),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                username[0]
                ,style: TextStyle(
                  fontSize: 25.0,
                  color:Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                height[0],
                style: TextStyle(
                    fontSize: 18.0,
                    color:Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                weight[0],
                style: TextStyle(
                    fontSize: 15.0,
                    color:Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                  elevation: 2.0,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
                      child: Text(handles[0],style: TextStyle(
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300
                      ),))
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text( height[0],
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600
                              ),),
                            SizedBox(
                              height: 7,
                            ),
                            Text(weight[0],
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300
                              ),)
                          ],
                        ),
                      ),
                      Expanded(
                        child:
                        Column(
                          children: [
                            Text("0 XP",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600
                              ),),
                            SizedBox(
                              height: 7,
                            ),
                            Text("Lvl 1",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300
                              ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),

            ],
          ),
        )
    );
  }
}
