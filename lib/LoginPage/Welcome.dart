import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Diversion",
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LoginTitle("Welcome to Diversion"),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginTitle extends StatelessWidget{

  String title;

  LoginTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        child: Text(title)
      ),
    );
  }
}