import 'package:flutter/material.dart';
import 'package:repocket/SignUp_and_Login_Screen/forgot_password.dart';

import '../Service.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({Key? key}) : super(key: key);

  @override
  State<ForgotPassword2> createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 108,
            ),
            Image.asset('assest/ic_checkrmail.png'),
            SizedBox(
              height: 24,
            ),
            Text(
              'Check your email',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: Appfont.SpaceGrotesk,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.15,
                  color: AppColors.DARK_BLUE800),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                'We have sent a password reset instructions to\n                                   your email',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: Appfont.SpaceGrotesk_Regular,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.25,
                    color: AppColors.GREY700),
              ),
            ),
            //------- sign in button---------//
            SizedBox(
              height: 24,
            ),
            Container(
                height: 52,
                width: 156,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 2,
                          color: const Color(0xFF101828).withOpacity(0.05))
                    ],
                    color: AppColors.GREEN,
                    borderRadius: BorderRadius.circular(8)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.GREEN)),
                  onPressed: () {},
                  child: Text(
                    "Open email app",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontSize: 15,
                        letterSpacing: -0.25,
                        color: AppColors.DARK_BLUE800),
                  ),
                )),

            //------- sign in button---------//
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Did not receive it?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: Appfont.Mukta_medium,
                      fontSize: 15,
                      letterSpacing: -0.15,
                      color: AppColors.GREY500),
                ),
                SizedBox(
                  width: 4,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ));
                  },
                  child: Text(
                    "Try another email address",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: Appfont.Mukta,
                        fontSize: 15,
                        letterSpacing: -0.15,
                        color: AppColors.DARK_BLUE500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
