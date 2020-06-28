import 'package:flutter/material.dart';
import 'package:newapp/MainPage/blogpage.dart';

class Snap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
      children: <Widget>[
        Center(
          child: FlatButton(
              onPressed: () {Scaffold.of(context).openDrawer();},
              color: Colors.indigo[500],
              child: Text("Menu")
          ),
        ),
      ],
    );

  }
}

class Snap2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}