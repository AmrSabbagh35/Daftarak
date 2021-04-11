import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FlutterLogin(
        theme: LoginTheme(
            accentColor: Colors.white,
            footerTextStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            bodyStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            inputTheme: InputDecorationTheme(
              fillColor: Colors.white,
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
              helperStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              prefixStyle: TextStyle(
                  backgroundColor: Colors.white, fontWeight: FontWeight.w500),
              suffixStyle: TextStyle(
                  backgroundColor: Colors.white, fontWeight: FontWeight.w500),
              hintStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            beforeHeroFontSize: 30,
            primaryColor: Color.fromRGBO(23, 33, 42, 1),
            textFieldStyle:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            cardTheme: CardTheme(
              clipBehavior: Clip.antiAlias,
              color: Color.fromRGBO(44, 47, 51, 1),
              elevation: 10,
              margin: EdgeInsets.all(20),
            ),
            buttonTheme: LoginButtonTheme(
                backgroundColor: Colors.cyan,
                elevation: 5,
                splashColor: Colors.cyan[200],
                highlightColor: Colors.cyan[400],
                highlightElevation: 6)),
        title: "دفترك",
        logo: "assets/images/icon.jpg",
        onSignup: (_) => Future(null),
        onLogin: (_) => Future(null),
        onRecoverPassword: (_) => Future(null),
        messages: LoginMessages(
          usernameHint: 'Username',
          passwordHint: 'Password',
          confirmPasswordHint: 'Confirm Your Password',
          loginButton: 'Log In',
          signupButton: '',
          forgotPasswordButton: 'Forgot Password ?',
          recoverPasswordButton: 'Help',
          goBackButton: 'Go Back',
          confirmPasswordError: 'Password Not Match',
          recoverPasswordDescription: 'Contact us to recover your password',
          recoverPasswordSuccess: 'Password recovered successfully',
        ),
        // theme: LoginTheme(
        //   primaryColor: Colors.teal,
        //   accentColor: Colors.red,
        //   errorColor: Colors.deepOrange,
        //   pageColorLight: Colors.indigo.shade300,
        //   pageColorDark: Colors.indigo.shade500,
        //   titleStyle: TextStyle(
        //     color: Colors.greenAccent,
        //     fontFamily: 'Quicksand',
        //     letterSpacing: 4,
        //   ),
        //   // beforeHeroFontSize: 50,
        //   // afterHeroFontSize: 20,
        //   bodyStyle: TextStyle(
        //     fontStyle: FontStyle.italic,
        //     decoration: TextDecoration.underline,
        //   ),
        //   textFieldStyle: TextStyle(
        //     color: Colors.red,
        //     shadows: [Shadow(color: Colors.yellow, blurRadius: 2)],
        //   ),
        //   buttonStyle: TextStyle(
        //     fontWeight: FontWeight.w800,
        //     color: Colors.yellow,
        //   ),
        //   cardTheme: CardTheme(
        //     color: Colors.yellow.shade100,
        //     elevation: 5,
        //     margin: EdgeInsets.only(top: 15),
        //     shape: ContinuousRectangleBorder(
        //         borderRadius: BorderRadius.circular(100.0)),
        //   ),
        //   inputTheme: InputDecorationTheme(
        //     filled: true,
        //     fillColor: Colors.purple.withOpacity(.1),
        //     contentPadding: EdgeInsets.zero,
        //     errorStyle: TextStyle(
        //       backgroundColor: Colors.orange,
        //       color: Colors.white,
        //     ),
        //     labelStyle: TextStyle(fontSize: 12),
        //     enabledBorder: UnderlineInputBorder(
        //       borderSide: BorderSide(color: Colors.blue.shade700, width: 4),
        //       // borderRadius: inputBorder,
        //     ),
        //     focusedBorder: UnderlineInputBorder(
        //       borderSide: BorderSide(color: Colors.blue.shade400, width: 5),
        //       // borderRadius: inputBorder,
        //     ),
        //     errorBorder: UnderlineInputBorder(
        //       borderSide: BorderSide(color: Colors.red.shade700, width: 7),
        //       // borderRadius: inputBorder,
        //     ),
        //     focusedErrorBorder: UnderlineInputBorder(
        //       borderSide: BorderSide(color: Colors.red.shade400, width: 8),
        //       // borderRadius: inputBorder,
        //     ),
        //     disabledBorder: UnderlineInputBorder(
        //       borderSide: BorderSide(color: Colors.grey, width: 5),
        //       // borderRadius: inputBorder,
        //     ),
        //   ),
        //   buttonTheme: LoginButtonTheme(
        //     splashColor: Colors.purple,
        //     backgroundColor: Colors.pinkAccent,
        //     highlightColor: Colors.lightGreen,
        //     elevation: 9.0,
        //     highlightElevation: 6.0,
        //     shape: BeveledRectangleBorder(
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        //     // shape: CircleBorder(side: BorderSide(color: Colors.green)),
        //     // shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(55.0)),
        //   ),
        // ),
      ),
    );
  }
}
