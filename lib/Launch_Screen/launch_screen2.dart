import 'package:flutter/material.dart';

import '../Service.dart';
import 'launch_screen3.dart';

class LaunchScreen2 extends StatefulWidget {
  const LaunchScreen2({Key? key}) : super(key: key);

  @override
  State<LaunchScreen2> createState() => _LaunchScreen2State();
}

class _LaunchScreen2State extends State<LaunchScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assest/ic_bg.png'), fit: BoxFit.fill)),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                AppString.LAUNCH_SCREEN2,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: Appfont.SpaceGrotesk,
                    fontSize: 24,
                    color: AppColors.WHITE),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Let’s start with our Terms of Use",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: Appfont.SpaceGrotesk_Regular,
                    fontSize: 15,
                    color: AppColors.GREY),
              ),
            ),
            Container(
              height: 500,
              width: 323,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      '1. Terms',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: Appfont.SpaceGrotesk,
                          fontSize: 20,
                          color: AppColors.WHITE),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Container(
                        height: 400,
                        child: Text(
                          AppString.TERM,
                          softWrap: true,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: Appfont.Mukta,
                              fontSize: 15,
                              letterSpacing: -0.15,
                              color: AppColors.WHITE),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 52,
                width: 374,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.GREEN)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Launch_Screen3(),
                        ));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Color(0xFF573353),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        fontFamily: Appfont.SpaceGrotesk_medium),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
