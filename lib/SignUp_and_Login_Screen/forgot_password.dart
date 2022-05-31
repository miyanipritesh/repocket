import 'package:flutter/material.dart';

import '../Service.dart';
import 'forgot_password2.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: ListView(
        children: [
          const SizedBox(
            height: 26,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 345),
            child: Icon(Icons.arrow_back),
          ),
          const SizedBox(
            height: 28,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Forgot password',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: Appfont.SpaceGrotesk,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.25,
                  color: AppColors.DARK_BLUE800),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Enter the email associated with your account and we’ll send an email with instructions to reset your password.',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.SpaceGrotesk_Regular,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.25,
                  color: AppColors.GREY700),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          //------- Email---------//

          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Email',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: Appfont.Mukta_medium,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                  color: AppColors.GREY700),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: 43,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.GREY300),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      prefixIcon:
                          const ImageIcon(AssetImage('assest/ic_mail.png')),
                      hintText: 'olivia@email.com',
                      hintStyle: const TextStyle(
                          fontSize: 15,
                          fontFamily: Appfont.Mukta,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                          color: AppColors.GREY400),
                      fillColor: AppColors.GREY300.withOpacity(0.01),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8))),
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          //------- Email---------//

          //------- sign in button---------//

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPassword2(),
                    ));
              },
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 2),
                          blurRadius: 2,
                          color: const Color(0xFFF3F4F6).withOpacity(0.05))
                    ],
                    color: const Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontSize: 15,
                        letterSpacing: -0.25,
                        color: AppColors.GREY400),
                  ),
                ),
              ),
            ),
          ),

          //------- sign in button---------//
        ],
      ),
    );
  }
}
