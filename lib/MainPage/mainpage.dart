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
  bool temporaryBool = false;
  int stoneItem = 0;

  void ItemTap (int index) {
    setState(() {
      stoneItem = index;
    });
    if (index ==1){
      _scaffoldKey.currentState.openDrawer();
    };
  }



  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();


  Widget Pageboi (int index) {
    if (index == 0){
      return Snap();
    }else if(index == 1){
      return Snap2();
    }
  }


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
            onTap: ItemTap,
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


  //      return MaterialApp(
//        home: AlertDialog(
//          title: Text("Sign-in Required"),
//          content: Column(
//          mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
//              Text("This app requires a sign-in with a google account.")
//            ],
//          ),
//          actions: <Widget>[
//            FlatButton(
//              onPressed: () {
//                Navigator.of(context, rootNavigator: true).pop('dialog');
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => Login()),
//                );
//              },
//              child: Text("Continue"),
//              color: Colors.indigo[400],
//            ),
//          ],
//        ),
//      );