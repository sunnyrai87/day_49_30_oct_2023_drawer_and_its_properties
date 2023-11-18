// import 'package:day_47_27_oct_2023_popupmenu_added_navigation_in_popupmenu/tabs/chat_tabs.dart';
// import 'package:flutter/material.dart';
//
// class TabPage extends StatefulWidget {
//   const TabPage({super.key});
//
//   @override
//   State<TabPage> createState() => _TabPageState();
// }
//
// class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
//   late TabController mTabController ;
//
//   @override
//   void initState() {
//
//     super.initState();
//     mTabController =  TabController(length: 7, vsync: this);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 7,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("WhatApp"),
//           bottom: TabBar(isScrollable: true, tabs: [
//             Tab(icon: Icon(Icons.chat), text: 'Chats'),
//             //child: Text('Chats')),
//             Tab(icon: Icon(Icons.browse_gallery), text: 'Status'),
//             Tab(icon: Icon(Icons.phone), text: 'Calls'),
//             Row(
//               children: [
//                 Icon(Icons.chat),
//                 Text('phone'),
//               ],
//             ),
//             Tab(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.phone),
//                   Text('Calls'),
//                 ],
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.browse_gallery),
//                 Text('Status'),
//               ],
//             ),
//             Row(
//               children: [
//                 Icon(Icons.phone),
//                 Text('Calls'),
//               ],
//             ),
//           ]),
//         ),
//         body: TabBarView(children: [
//           ChatTabPage(),
//           Container(
//             color: Colors.orange,
//           ),
//           Container(
//             color: Colors.green,
//           ),
//           Container(
//             color: Colors.brown,
//           )
//         ]),
//       ),
//     );
//   }
// }
