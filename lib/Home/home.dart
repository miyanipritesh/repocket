import 'package:flutter/material.dart';
import 'package:repocket/Service.dart';

import '../Devices/devices.dart';
import '../Refer/refer.dart';
import '../Setting/setting.dart';
import 'homepage.dart';

int index1 = 0;
List screen = [
  const HomePage(),
  const ReferScrren(),
  const Devices(),
  const SettingScreeen(),
];

class Home extends StatefulWidget {
  const Home({Key? key, user}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: screen[index1],
      bottomNavigationBar: Container(
        height: 91,
        decoration: BoxDecoration(border: Border.all(color: AppColors.GREY300)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 2,
          currentIndex: index1,
          onTap: (index) {
            setState(() {
              index1 = index;
            });
          },
          backgroundColor: Colors.white,
          unselectedItemColor: AppColors.GREY400,
          selectedItemColor: AppColors.DARK_BLUE800,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
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
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
