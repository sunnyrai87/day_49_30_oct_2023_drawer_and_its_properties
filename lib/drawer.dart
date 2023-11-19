import 'package:day_49_30_oct_2023_drawer_and_its_properties/tabs/Profile_tab_page.dart';
import 'package:day_49_30_oct_2023_drawer_and_its_properties/tabs/chat_tabs.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  List<Map<String, dynamic>> drawerItems = [
    {"icons": Icons.settings, "title": "Settings"},
    {"icons": Icons.info_outline, "title": "about us"},
    {"icons": Icons.call, "title": "contact us"},
    {"icons": Icons.account_circle, "title": "my profile"},
    {"icons": Icons.logout, "title": "sign out"}
  ];

  int selectedIndex= 0;

  List<Widget> ListDrawerPages = [ChatTabPage(),
    ProfileTabPage(),
    ChatTabPage(),
    ProfileTabPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: //Container(),
      ListDrawerPages[selectedIndex],
      drawer: //Container
          Drawer(
              width: 300,
              backgroundColor: Colors.white,
              shadowColor: Colors.orange,
              elevation: 21,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(11),
                    //margin: EdgeInsets.all(7),
                    height: 250,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(11),
                        color: Colors.blue.shade200),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 11,
                          ),
                          SizedBox(
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Wscubetech'),
                                Text('Wscubetech@gmail.com')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: drawerItems.length,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: (){
                              if (index==4){
                              } else selectedIndex = index;
                           setState(() {});
                           Navigator.pop(context);
                            },
                            child: ListTile(
                                leading: Icon(drawerItems[index]['icons']),
                                title: Text(drawerItems[index]['title'])),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Version 1.0"),
                  ),
                ],

              )),
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
