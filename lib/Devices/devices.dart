import 'package:flutter/material.dart';
import 'package:repocket/Service.dart';

class Devices extends StatefulWidget {
  const Devices({Key? key}) : super(key: key);

  @override
  State<Devices> createState() => _DevicesState();
}

class _DevicesState extends State<Devices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Devices',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: Appfont.SpaceGrotesk,
                      fontWeight: FontWeight.w700,
                      color: AppColors.GREY800,
                      letterSpacing: -0.25),
                ),
                Text(
                  '3 devices',
                  style: TextStyle(
                      fontSize: 15.5,
                      fontFamily: Appfont.Mukta,
                      fontWeight: FontWeight.w400,
                      color: AppColors.GREY500,
                      letterSpacing: -0.15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              constraints: BoxConstraints(
                maxHeight: double.infinity,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFFEFEFEF), width: 2)),
              child: Column(
                children: List.generate(
                  3,
                  (index) => Container(
                    height: 84,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide.none,
                            left: BorderSide.none,
                            right: BorderSide.none)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset('assest/ic_phone.png'),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yaesul’s Phone',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.GREY900,
                                  letterSpacing: -0.25),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.GREEN),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Active now',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Appfont.Mukta_medium,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.GREEN700,
                                      letterSpacing: -0.15),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '3.3923 GB',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Appfont.Mukta,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.GREY500,
                                      letterSpacing: -0.15),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 174,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assest/ic_bg4.png')),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assest/ic_alert.png'),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Pro Tip',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: Appfont.SpaceGrotesk_medium,
                              fontWeight: FontWeight.w500,
                              color: AppColors.GREEN,
                              letterSpacing: -0.25),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Use Repocket on other devices to\nmaximise your earning.\n\nSimply install the app on other devices\nand login with your existing account! ',
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: Appfont.SpaceGrotesk_Regular,
                              fontWeight: FontWeight.w400,
                              color: AppColors.WHITE,
                              letterSpacing: -0.25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
