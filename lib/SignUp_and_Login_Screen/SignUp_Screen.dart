import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:repocket/Service.dart';

import '../Firebase/authnticationHelper.dart';
import '../Home/home.dart';
import 'login.dart';

TextEditingController name = TextEditingController();

class SignUpSCreen extends StatefulWidget {
  const SignUpSCreen({Key? key}) : super(key: key);

  @override
  State<SignUpSCreen> createState() => _SignUpSCreenState();
}

class _SignUpSCreenState extends State<SignUpSCreen> {
  late FocusNode _focusNode;
  late FocusNode _focusNode1;
  late FocusNode _focusNode2;
  bool isvisible = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String? password1;
  GlobalKey<State<StatefulWidget>> isvalid = GlobalKey();
  @override
  void initState() {
    super.initState();
    setState(() {
      _focusNode1 = FocusNode();
    });
    _focusNode = FocusNode();
    _focusNode2 = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: Form(
        key: isvalid,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          children: [
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 345),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back)),
            ),
            const SizedBox(
              height: 28,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Create an Account',
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
                'Sign up now to access your free account and\nmake money',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: Appfont.SpaceGrotesk_Regular,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.25,
                    color: AppColors.GREY700),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            //------- Your name---------//

            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Your name',
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
                      border: Border.all(
                          width: 1,
                          color: _focusNode.hasFocus
                              ? AppColors.GREEN
                              : AppColors.GREY300),
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.WHITE,
                      boxShadow: _focusNode.hasFocus
                          ? [
                              const BoxShadow(
                                  offset: Offset(0, 0),
                                  spreadRadius: 4,
                                  color: Color.fromRGBO(115, 237, 190, 0.3)),
                            ]
                          : null),
                  child: TextField(
                    controller: name,
                    onTap: _requestFocus,
                    textInputAction: TextInputAction.next,
                    focusNode: _focusNode,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        prefixIcon: const ImageIcon(
                          AssetImage('assest/ic_person.png'),
                          color: AppColors.GREY500,
                        ),
                        hintText: 'Olivia Turkney',
                        hintStyle: const TextStyle(
                            fontSize: 15,
                            fontFamily: Appfont.Mukta,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.15,
                            color: AppColors.GREY400),
                        filled: true,
                        fillColor: AppColors.WHITE,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8))),
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            //------- Your name---------//

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
                      color: AppColors.WHITE,
                      boxShadow: _focusNode1.hasFocus
                          ? !EmailValidator.validate(email.value.text)
                              ? [
                                  BoxShadow(
                                      offset: Offset(0, 0),
                                      spreadRadius: 4,
                                      color:
                                          Color.fromRGBO(115, 237, 190, 0.3)),
                                ]
                              : [
                                  BoxShadow(
                                      offset: Offset(0, 0),
                                      spreadRadius: 4,
                                      color:
                                          Color.fromRGBO(225, 166, 165, 0.5)),
                                ]
                          : null,
                      border: Border.all(
                        color: _focusNode1.hasFocus
                            ? !EmailValidator.validate(email.value.text)
                                ? AppColors.GREEN
                                : Colors.red
                            : AppColors.GREY300,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    /*validator: (email) {
                        if (email != null && !EmailValidator.validate(email)) {
                          return;
                        }
                        return null;
                      },*/
                    onSaved: (value) {
                      setState(() {
                        email.text = value!;
                      });
                    },
                    textInputAction: TextInputAction.next,
                    controller: email,
                    focusNode: _focusNode1,
                    onTap: _requestFocus1,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        prefixIcon: const ImageIcon(
                          AssetImage('assest/ic_mail.png'),
                          color: AppColors.GREY500,
                        ),
                        hintText: 'olivia@email.com',
                        hintStyle: const TextStyle(
                            fontSize: 15,
                            fontFamily: Appfont.Mukta,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.15,
                            color: AppColors.GREY400),
                        filled: true,
                        fillColor: AppColors.WHITE,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8))),
                  )),
            ),

            const SizedBox(
              height: 16,
            ),
            //------- Email---------//

            //------- password---------//
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Password',
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
                      color: AppColors.WHITE,
                      boxShadow: _focusNode2.hasFocus
                          ? [
                              const BoxShadow(
                                  offset: Offset(0, 0),
                                  spreadRadius: 4,
                                  color: Color.fromRGBO(115, 237, 190, 0.3)),
                            ]
                          : null,
                      border: Border.all(
                        width: 1,
                        color: _focusNode2.hasFocus
                            ? AppColors.GREEN
                            : AppColors.GREY300,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    obscureText: isvisible,
                    textInputAction: TextInputAction.done,
                    /*validator: (password) {
                      if (password == null && password!.length < 7) {
                        return 'dsfdfsgfgf';
                      }
                    },*/
                    focusNode: _focusNode2,
                    onTap: _requestFocus2,
                    controller: password,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onSaved: (value) {
                      setState(() {
                        password1 = value!;
                      });
                    },
                    /*onChanged: (value) {
                      password1 = value;
                    },*/
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        prefixIcon:
                            const ImageIcon(AssetImage('assest/ic_lock.png')),
                        hintText: '●●●●●●●●',
                        hintStyle: const TextStyle(
                            fontSize: 15,
                            fontFamily: Appfont.Mukta,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.15,
                            color: AppColors.GREY400),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isvisible = !isvisible;
                              });
                            },
                            icon: Icon(isvisible
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        fillColor: AppColors.WHITE,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8))),
                  )),
            ),
            //------- password---------//
            const SizedBox(
              height: 6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Must be at least 8 characters',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: Appfont.Mukta_medium,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.15,
                    color: AppColors.GREY800),
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            //------- sign Up button---------//

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFF3F4F6))),
                  onPressed: () {
                    AuthenticationHelper()
                        .signUp(email: email.text, password: password.text)
                        .whenComplete(() =>
                            Fluttertoast.showToast(msg: 'sign up seccesfully'));
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                        (route) => false);
                  },
                  child: Text(
                    "Sign up",
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

            //------- sign Up button---------//
            const SizedBox(
              height: 16,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: SizedBox(
                  height: 42,
                  width: 345,
                  child: Text(
                    'By continuing, I confirm that I am 18+ and agree to Repocket’s Terms of Use and Privacy Policy',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: Appfont.Mukta,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.15,
                        color: AppColors.GREY500),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 31,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 148,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFE8E8E8),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'or',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: Appfont.SpaceGrotesk_Regular,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.25,
                      color: AppColors.GREY500),
                ),
                SizedBox(
                  width: 16,
                ),
                SizedBox(
                  width: 148,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFE8E8E8),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 27,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 44,
                    width: 104,
                    decoration: BoxDecoration(
                        color: AppColors.WHITE,
                        border: Border.all(color: AppColors.GREY300),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(child: Image.asset('assest/ic_google.png'))),
                Container(
                    height: 44,
                    width: 104,
                    decoration: BoxDecoration(
                        color: AppColors.BLUE,
                        border: Border.all(color: AppColors.GREY300),
                        borderRadius: BorderRadius.circular(8)),
                    child:
                        Center(child: Image.asset('assest/ic_facebook.png'))),
                Container(
                    height: 44,
                    width: 104,
                    decoration: BoxDecoration(
                        color: AppColors.BLUELIGHT,
                        border: Border.all(color: AppColors.GREY300),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(child: Image.asset('assest/ic_twitter.png'))),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: Appfont.Mukta_medium,
                      fontSize: 15,
                      letterSpacing: -0.15,
                      color: AppColors.GREY500),
                ),
                const SizedBox(
                  width: 4,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  child: const Text(
                    "Log in",
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

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  void _requestFocus1() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode1);
    });
  }

  void _requestFocus2() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode2);
    });
  }
}
