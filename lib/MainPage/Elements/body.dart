import 'package:flutter/material.dart';
import 'package:diversion_flutter_new/LoginPage/LoginStatus.dart';
import 'Blog.dart';
import 'package:diversion_flutter_new/MainPage/Elements/Blog.dart';



class Snap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
      children: <Widget>[
        Blog(),
        Padding(
          padding: EdgeInsets.all(16.0)
        ),
        LoggedIN(context),
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