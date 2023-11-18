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
// class HomePage extends StatelessWidget {
//   List<Map<String, dynamic>> ListPopupMenuitems = [
//     {"icons": Icons.settings, "title": "Settings"},
//     {"icons": Icons.info_outline, "title": "about us"},
//     {"icons": Icons.call, "title": "contact us"},
//     {"icons": Icons.logout, "title": "sign out"}
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//         title: Text("Home"),
//         leading: Icon(Icons.nightlight),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               bottom: Radius.circular(21),
//             ),
//             side: BorderSide(
//                 color: Colors.black,
//                 width: 2,
//                 strokeAlign: BorderSide.strokeAlignOutside)),
//         shadowColor: Colors.grey,
//         elevation: 5,
//         flexibleSpace: Container(
//           height: 200,
//           color: Colors.yellow,
//         ),
//         bottom: PreferredSize(
//             preferredSize: Size(double.infinity, 200),
//             child:
//                 //FlutterLogo() or search bar also we can put here in place of container
//                 Container()),
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
//           PopupMenuButton(
//               color: Colors.blue,
//               tooltip: "settings",
//               elevation: 11,
//               shadowColor: Colors.yellow,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(21)),
//               itemBuilder: (_) {
//                 return [
//                   PopupMenuItem(
//                       child: Row(
//                     children: [Icon(Icons.settings), Text("Settings")],
//                   )),
//                   PopupMenuItem(
//                       child: Row(
//                     children: [Icon(Icons.info_outline), Text("about us")],
//                   )),
//                   PopupMenuItem(
//                       child: Row(
//                     children: [Icon(Icons.settings), Text("Settings")],
//                   )),
//                   PopupMenuItem(
//                       child: Row(
//                           children: [Icon(Icons.settings), Text("Settings")]))
//                 ];
//               }),
//         ],
//         //leadingWidth: 200,
//       ),
//     );
//   }
// }
//
// // actions: [Icon(Icons.camera_enhance_outlined,
// // ),
// // SizedBox(height: 11,),
// // Icon(Icons.favorite_border),
// // ),
// // ],
