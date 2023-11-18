import 'package:flutter/material.dart';

class ProfileTabPage extends StatelessWidget {
  const ProfileTabPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text("Profile", style: TextStyle(
            fontSize: 34, color: Colors.white
        ),),
      ),
    );
  }
}
