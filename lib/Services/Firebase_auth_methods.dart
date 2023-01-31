import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:voting_app/utils/showSnakbar.dart';

class FirebaseAuthMethod {
  final FirebaseAuth _auth;
  FirebaseAuthMethod(this._auth);
  //email signup
  Future<void> EmailSignup({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      _auth.createUserWithEmailAndPassword(email: email, password: password);
      //send email verification
      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak Password") {
        showSnackbar(context, "You entered wrong password");
      }
      showSnackbar(context, e.message!);
    }
  }

//login using email
  Future<void> loginUsingEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (!_auth.currentUser!.emailVerified) {
        await sendEmailVerification(context);
        showSnackbar(context, "Email not verified please check your inbox");
      }
    } 
    on FirebaseAuthException catch (e) {
      showSnackbar(context, e.message!);
    }
  }

  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      showSnackbar(context, "Email verification has been sent");
    } on FirebaseAuthException catch (e) {
      showSnackbar(context, e.message!);
    }
  }
}