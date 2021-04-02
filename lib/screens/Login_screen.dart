import 'package:flutter/material.dart';
import 'package:test_login/widgets/widget.dart';

import 'Home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_circle_up),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Homescreen()));
          },
        ),
        backgroundColor: Colors.white,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            child: LoginWidget(),
          ),
        ));
  }
}
