import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:repocket/Launch_Screen/launch_screen1.dart';

import 'Home/home.dart';

class Main2 extends StatefulWidget {
  const Main2({Key? key}) : super(key: key);

  @override
  State<Main2> createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.data == null) {
            return LaunchScreen1();
          }
          return Home();
        } else {
          return Scaffold();
        }
      },
    );
  }
}
