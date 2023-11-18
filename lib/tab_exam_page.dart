
import 'package:day_49_30_oct_2023_drawer_and_its_properties/tabs/chat_tabs.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController mTabController;
  String mTitle = "Chats";

  @override
  void initState() {
    super.initState();
    mTabController = TabController(length: 7, vsync: this);
    mTabController.addListener(() {
      print(mTabController.index);
      if (mTabController.index == 0) {
        mTitle = "Chats";
      } else if (mTabController.index == 1) {
        mTitle = "Status";
      } else (mTitle = "Calls");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mTitle),
        bottom: TabBar(controller: mTabController, isScrollable: true, tabs: [
          Tab(icon: Icon(Icons.chat), text: 'Chats'),
          //child: Text('Chats')),
          Tab(icon: Icon(Icons.browse_gallery), text: 'Status'),
          Tab(icon: Icon(Icons.phone), text: 'Calls'),
          Row(
            children: [
              Icon(Icons.chat),
              Text('phone'),
            ],
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                Text('Calls'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.browse_gallery),
              Text('Status'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone),
              Text('Calls'),
            ],
          ),
        ]),
      ),
      body: TabBarView(controller: mTabController, children: [
        ChatTabPage(),
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.brown,
        )
      ]),
    );
  }
}
