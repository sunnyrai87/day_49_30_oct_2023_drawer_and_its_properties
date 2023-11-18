
import 'package:day_49_30_oct_2023_drawer_and_its_properties/tabs/Profile_tab_page.dart';
import 'package:day_49_30_oct_2023_drawer_and_its_properties/tabs/chat_tabs.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  List<Widget> ListNavPages = [ChatTabPage(), ProfileTabPage(),
    ChatTabPage(), ProfileTabPage()];

  int mSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      body: ListNavPages[mSelectedIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.grey.shade200,
          indicatorColor: Colors.orange.shade200,
          selectedIndex: mSelectedIndex,
          onDestinationSelected: (index) {
            mSelectedIndex = index;
            setState(() {});
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.chat), label: 'Chat'),
            NavigationDestination(
                icon: Icon(Icons.account_circle), label: 'profile'),
            NavigationDestination(icon: Icon(Icons.chat), label: 'Chat'),
            NavigationDestination(
                icon: Icon(Icons.account_circle), label: 'profile')
          ]),
    );
  }
}
