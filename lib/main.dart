import 'package:animation_task/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'linux_logo.png', 
          // scale: 0.8, 
          height: 600,
          width: 600,
          //color: Colors.red,                           
          colorBlendMode: BlendMode.darken,
          //fit: BoxFit.fitWidth,
        ),
        nextScreen: SecondScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 2000,
        //backgroundColor: Colors.blueAccent,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
