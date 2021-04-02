import 'package:flutter/material.dart';
import 'package:test_login/screens/Login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Screen',
        home: LoginScreen());
  }
}
