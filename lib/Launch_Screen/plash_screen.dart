import 'dart:async';

import 'package:flutter/material.dart';
import 'package:repocket/Service.dart';

import 'launch_screen1.dart';

class PlashScreen extends StatefulWidget {
  const PlashScreen({Key? key}) : super(key: key);

  @override
  State<PlashScreen> createState() => _PlashScreenState();
}

class _PlashScreenState extends State<PlashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const LaunchScreen1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.DARK_BLUE500,
      body: Center(
        child: Image.asset('assest/ic_logo.png'),
      ),
    );
  }
}
