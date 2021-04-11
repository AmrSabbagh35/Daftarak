import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test_login/screens/Nav_Bar_Pages/Home_screen.dart';
import 'package:test_login/screens/Login_Pages/Login_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Screen',
        // theme: ThemeData.dark(),
        home: AnimatedSplashScreen(
            splash: Icons.menu_book,
            duration: 100,
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.bottomToTop,
            nextScreen: LoginScreen()));
  }
}

ThemeData _darkTheme = ThemeData(
  primaryTextTheme: TextTheme(),
  accentColor: Colors.white,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
);

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue);
