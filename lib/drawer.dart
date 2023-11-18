import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  List<Map<String, dynamic>> drawerItems = [
    {"icons": Icons.settings, "title": "Settings"},
    {"icons": Icons.info_outline, "title": "about us"},
    {"icons": Icons.call, "title": "contact us"},
    {"icons": Icons.account_circle, "title": "my profile"},
    {"icons": Icons.logout, "title": "sign out"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: Container(),
      drawer: //Container
          Drawer(
              width: 300,
              backgroundColor: Colors.white,
              shadowColor: Colors.orange,
              elevation: 21,
              child: ListView.builder(
                  itemCount: drawerItems.length,
                  itemBuilder: (_, index) {
                return ListTile(
                  leading: Icon(drawerItems[index]['icons']),
                  title: Text(drawerItems[index]['title']
                ));
              })),
    );
  }
}

//children: [
//                   ListTile(
//                     leading: Icon(Icons.home),
//                     title: Text("Home"),
//
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.account_circle),
//                     title: Text("My Profile"),
//
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.settings),
//                     title: Text("Settings"),
//
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.info),
//                     title: Text("About us"),
//
//                   )
//                 ]
