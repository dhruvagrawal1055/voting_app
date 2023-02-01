import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/Screens/registrationScreen.dart';

import 'loginScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: "assets/images/splash.png",
        duration: 1500,
        splashIconSize: double.infinity,
        backgroundColor: Color.fromRGBO(4, 42, 126, 1),
        splashTransition: SplashTransition.sizeTransition,
        nextScreen: loginScreen());
  }
}
