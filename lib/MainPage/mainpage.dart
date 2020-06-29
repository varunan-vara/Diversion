import 'package:flutter/material.dart';
import 'Elements/appbar.dart';
import 'Elements/body.dart';
import 'package:diversion_flutter_new/LoginPage/Welcome.dart';
import 'package:diversion_flutter_new/Diary/DiaryEntry.dart';



class MyApp extends StatefulWidget{
  MainApp createState() => MainApp();
}



class MainApp extends State<MyApp> {

  var Keykey = new GlobalKey<ScaffoldState>();

  int stoneItem = 0;



  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();





  @override
  Widget build(BuildContext context){
      return MaterialApp(
        title: "An Amazing App",
        home: Scaffold(
          key: Keykey,

          drawer: Sandwich(true, context),

          appBar: TopBar(true, "Home"),

          body: Snap(),


          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[200],
            items: const <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home",)
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                title: Text("Diaries"),
              ),
            ],
            currentIndex: stoneItem,
            //onTap: ,
            selectedItemColor: Colors.indigo[500],
          ),
          floatingActionButton: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
            ),
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () {
                  showDialog(
                    context: Keykey.currentContext,
                    builder: (BuildContext context) {
                      return NewEntryDialog();
                    }
                  );
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.indigo[500],
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
      );


    }
  }
