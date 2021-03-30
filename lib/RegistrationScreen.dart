import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HomeScreen.dart';


class Registration extends StatefulWidget{
  @override
  _RegisterState createState() => _RegisterState();
}


class _RegisterState extends State<Registration> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Container(
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  email = value;
                },
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              Container(height: 25),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                textAlign: TextAlign.center,
                obscureText: true,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter a password',
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              FlatButton(
                  onPressed: () async {
                    try {
                      final user = await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                      if (user != null)
                        Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHomePage()));
                    }
                    catch (e) {
                      print ("Exception: " + e);
                    }
                  },
                  child: Text('Register')
              ),
            ],
          ),
        ),
      ),
    );
  }
}