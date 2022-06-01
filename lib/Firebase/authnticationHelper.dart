import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:repocket/Firebase/user_model.dart';

import '../SignUp_and_Login_Screen/SignUp_Screen.dart';

class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get user => _auth.currentUser;

//SIGN UP METHOD
  Future signUp({required String email, required String password}) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((value) => {Postdatatofirebase()});
    } catch (e) {
      if (e == 'weak-password') {
      } else if (e == 'email-already-in-use') {}
    }
  }

  //SIGN IN METHODJ
  Future<String?> signIn(
      {required String email, required String password}) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => Fluttertoast.showToast(msg: 'Sign in succesfull'));
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.code);
    }
  }

  //SIGN OUT METHOD
  Future<void> signOut() async {
    await _auth.signOut();
  }

  Postdatatofirebase() async {
    var firebaseFirestore = FirebaseFirestore.instance;
    UserModel usermodel =
        UserModel(email: user.email, firstName: name.text, uid: user.uid);

    await firebaseFirestore
        .collection('user')
        .doc(user.uid)
        .set(usermodel.toMap());
    Fluttertoast.showToast(msg: 'Create Account');
  }
}
