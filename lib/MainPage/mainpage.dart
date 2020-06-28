import 'package:flutter/material.dart';
import 'Elements/appbar.dart';
import 'Elements/body.dart';



class MyApp extends StatefulWidget{
  MainApp createState() => MainApp();
}



class MainApp extends State<MyApp> {


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
        drawer: Sandwich(true, context),

        appBar: TopBar(false, "Home"),

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
              icon: Icon(Icons.settings),
              title: Text("Settings"),
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
              onPressed: () {},
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