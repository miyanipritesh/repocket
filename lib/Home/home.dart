import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repocket/Service.dart';

import 'homepage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Screen = [
    HomePage(),
    Center(
      child: Text('2'),
    ),
    Center(
      child: Text('3'),
    ),
    Center(
      child: Text('4'),
    ),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Screen[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 2,
        currentIndex: index,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        backgroundColor: Colors.white,
        unselectedItemColor: AppColors.GREY400,
        selectedItemColor: AppColors.DARK_BLUE800,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assest/ic_icon1.png'),
                size: 20,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assest/ic_icon2.png')),
              label: 'Referral'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assest/ic_icon3.png')),
              label: 'Devices'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assest/ic_icon4.png')),
              label: 'More'),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
