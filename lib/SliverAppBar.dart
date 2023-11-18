// import 'package:day_47_27_oct_2023_popupmenu_added_navigation_in_popupmenu/main.dart';
// import 'package:flutter/material.dart';
// import 'dart:collection';
//
// void main (){
//   runApp(const MyApp());
//   }
//
//
//
//
//   class MyApp extends StatelessWidget {
//     const MyApp({super.key});
//
//     @override
//     Widget build(BuildContext context) {
//       return MaterialApp(
//         title: "SliverApp",
//         home: HomePage(),
//
//       );
//     }
//   }
//
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   List<Map<String, dynamic>> ListPopupMenuitems = [
//     {
//       "icons": Icons.settings,
//       "title": "Settings",
//     },
//     {"icons": Icons.info_outline, "title": "about us"},
//     {"icons": Icons.call, "title": "contact us"},
//     {"icons": Icons.account_circle, "title": "my profile"},
//     {"icons": Icons.logout, "title": "sign out"}
//   ];
//
//   //late Map<String, dynamic> mInitialValue;
//
//   String mInitialValue = '';
//   @override
//   void initState() {
//     super.initState();
//     //mInitialValue = ListPopupMenuitems[0] ['title'];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: CustomScrollView(
//     slivers: [SliverAppBar(
//           pinned: true,
//           snap: true,
//           floating: true,
//       title: Text("Home") ,
//     )],
//     ));
//
//
//
