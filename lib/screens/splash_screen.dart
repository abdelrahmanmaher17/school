import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:school/screens/aaa.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreenPage';

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Lottie.asset(
          'assets/animations/animation.json',
        ),
      ),
      nextScreen: aaa(),
      duration: 2000,
      splashIconSize: 800000,
    );
  }
}
