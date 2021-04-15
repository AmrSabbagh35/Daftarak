import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_login/widgets/widget.dart';

import '../../widgets/Bottom_Nav.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(360, 690),
        orientation: Orientation.portrait);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_circle_up),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => BottomNav()));
        },
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: LoginWidget()),
    );
  }
}

Widget _buildPortait(BuildContext context) => Scaffold(
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.arrow_circle_up),
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomNav()));
      },
    ),
    backgroundColor: Colors.white,
    body: GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: LoginWidget(),
    ));

Widget _buildLandscape() => Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Text('Still building it'),
    );
