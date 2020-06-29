import 'package:flutter/material.dart';
import 'package:diversion_flutter_new/LoginPage/Welcome.dart';

bool isLoggedIn = false;

void EditStatus(bool value) {
  isLoggedIn = value;
}

bool ReturnStatus() {
  return isLoggedIn;
}

Widget LoggedIN (var context) {
  if (isLoggedIn) {
    return Container();
  } else {
    return FlatButton(
      onPressed: () {
        showDialog(
            context: context,
        builder: (BuildContext context) {
             return Login();
        });
      },
      child: Container(
        width: 600,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:30.0, vertical: 40.0,),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text("Log In to Diversion:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,),),
                Text("You have not logged in yet! Tap here to log in and continue."),
              ]
          ),
        ),
      ),
    );
  }
}