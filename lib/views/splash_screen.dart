import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:notely/constants.dart';
import 'package:notely/views/notes_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/splash.gif', // Replace with your logo path
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          const Text(
            "Notely",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: kprimaryClor,
            ),
          ),
        ],
      ),
      nextScreen: NotesView(),
      backgroundColor: Colors.black, // Replace with your home screen widget
      splashIconSize: 5000,
      duration: 3000, // 3 seconds
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
