// import 'dart:collection';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
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
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             pinned: true,
//             //snap: true,
//             floating: true,
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.white,
//             title: Text(
//               "Home",
//             ),
//             leading: Icon(Icons.nightlight),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.vertical(
//                   bottom: Radius.circular(21),
//                 ),
//                 side: BorderSide(
//                     color: Colors.black,
//                     width: 2,
//                     strokeAlign: BorderSide.strokeAlignOutside)),
//             shadowColor: Colors.grey,
//             elevation: 5,
//             bottom: PreferredSize(
//                 child: Container(), preferredSize: Size(double.infinity, 100)),
//
//             // preferredSize: Size(double.infinity, 200),
//             // child:Container()),
//             //FlutterLogo() or search bar also we can put here in place of container
//
//             actions: [
//               IconButton(
//                   onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
//               IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
//               PopupMenuButton(
//                   initialValue: mInitialValue,
//                   tooltip: "settings",
//                   elevation: 11,
//                   shadowColor: Colors.yellow,
//                   onSelected: (value) {
//                     mInitialValue = value.toString();
//                     setState(() {});
//                   },
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(21)),
//                   itemBuilder: (_) {
//                     return ListPopupMenuitems.map((eachData) => PopupMenuItem(
//                         value: eachData['title'],
//                         onTap: () {
//                           if (eachData['title'] == "Settings") {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (Context) => Scaffold(
//                                       appBar:
//                                       AppBar(title: Text("Settings")),
//                                     )));
//                           }
//                         },
//                         child: Row(
//                           children: [
//                             Icon(
//                               eachData['icons'],
//                               color: Colors.white,
//                             ),
//                             SizedBox(width: 11),
//                             Text(eachData['title'])
//                           ],
//                         ))).toList();
//                   }),
//             ],
//             flexibleSpace: Container(
//               color: Colors.blue,
//             ),
//             expandedHeight: 200,
//           ),
//           SliverList(
//               delegate: SliverChildBuilderDelegate((context, index) => ListTile(
//                 title: Text('${index + 1}'),
//               )))
//         ],
//       ),
//     );
//   }
// }
//
// //AppBar(
// //         backgroundColor: Colors.blue,
// //         foregroundColor: Colors.white,
// //         title: Text("Home"),
// //         leading: Icon(Icons.nightlight),
// //         shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.vertical(
// //               bottom: Radius.circular(21),
// //             ),
// //             side: BorderSide(
// //                 color: Colors.black,
// //                 width: 2,
// //                 strokeAlign: BorderSide.strokeAlignOutside)),
// //         shadowColor: Colors.grey,
// //         elevation: 5,
// //         flexibleSpace: Container(
// //           height: 200,
// //           color: Colors.yellow,
// //         ),
// //         bottom: PreferredSize(
// //             preferredSize: Size(double.infinity, 200),
// //             child:
// //                 //FlutterLogo() or search bar also we can put here in place of container
// //                 Container()),
// //         actions: [
// //           IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
// //           IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
// //           PopupMenuButton(
// //               initialValue: mInitialValue,
// //               tooltip: "settings",
// //               elevation: 11,
// //               shadowColor: Colors.yellow,
// //               onSelected: (value) {
// //                 mInitialValue = value.toString();
// //                 setState(() {});
// //               },
// //               shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(21)),
// //               itemBuilder: (_) {
// //                 return ListPopupMenuitems.map((eachData) => PopupMenuItem(
// //                     value: eachData['title'],
// //                     onTap: () {
// //                       if (eachData['title'] == "Settings") {
// //                         Navigator.push(
// //                             context,
// //                             MaterialPageRoute(
// //                                 builder: (Context) => Scaffold(
// //                                       appBar: AppBar(title: Text("Settings")),
// //                                     )));
// //                       }
// //                     },
// //                     child: Row(
// //                       children: [
// //                         Icon(
// //                           eachData['icons'],
// //                           color: Colors.white,
// //                         ),
// //                         SizedBox(width: 11),
// //                         Text(eachData['title'])
// //                       ],
// //                     ))).toList();
// //               }),
// //         ],
// //         leadingWidth: 200,
// //       )
