import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/login_screen.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // splash: 'images/splash.png',
      splash: Lottie.asset('assets/lottie/splash.json'),
      splashIconSize: 250,
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
