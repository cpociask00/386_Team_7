import 'package:flutter/material.dart';
import 'main.dart';



class Diary extends StatefulWidget{
  @override
  _DiaryState createState() => _DiaryState();
}


class _DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Olakino'),
      ),
      body: Padding (
        padding: const EdgeInsets.all(9.0),
        child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                decoration: InputDecoration (
                  hintText: "Today's Date",
                  labelText: "Date",
                  labelStyle: TextStyle (
                      fontSize: 28,
                      color: Colors.blueAccent
                  ),
                ),
              ),
              TextFormField(
                maxLines: 24,
                decoration: InputDecoration (
                    hintText: "Description",
                    labelText: "Today I....",
                    labelStyle: TextStyle (
                      fontSize: 28,
                      color: Colors.blueAccent,

                    ),
                    border: OutlineInputBorder()
                ),
              ),
            ]
        ),
      ),
      drawer: GlobalDrawer.getDrawer(context),
    );
  }
}