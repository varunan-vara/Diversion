import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:newapp/MainPage/mainpage.dart';
import 'Blog.dart';
=======
import 'package:newapp/MainPage/blogpage.dart';
>>>>>>> 52320c44a37a884b10d39cfb8595943782390157

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