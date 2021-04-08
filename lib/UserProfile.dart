import 'package:flutter/material.dart';
import 'main.dart';


class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Olakino'),
      ),
      drawer: GlobalDrawer.getDrawer(context),
    );
  }
}