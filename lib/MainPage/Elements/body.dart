import 'package:flutter/material.dart';
import 'package:diversion_flutter_new/MainPage/mainpage.dart';
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