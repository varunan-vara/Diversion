import 'package:flutter/material.dart';



AppBar TopBar (bool run, String title) {
  if (run) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Colors.indigo[500],
    );
  }else{
    return null;
  }
}

Drawer Sandwich (bool run, BuildContext context) {
  if (run) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Menu",
                  style: MenuBarStyle(),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.indigo[600],
            ),
          ),
          ListTile(
            title: Text("Option 1"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Option 2"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }else{
    return null;
  }
}

TextStyle MenuBarStyle () {
  return TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}