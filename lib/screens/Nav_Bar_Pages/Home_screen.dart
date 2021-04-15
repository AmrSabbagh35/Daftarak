import 'package:flutter/material.dart';
import 'package:test_login/widgets/widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Welcome, \nAt Your Service !",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: ScreenUtil().screenHeight / 5,
              width: double.infinity.w,
              child: CalenderCard(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: double.infinity.w,
              height: ScreenUtil().screenHeight / 5,
              child: RemindersCard(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: double.infinity.w,
              height: ScreenUtil().screenHeight / 5,
              child: DailyBox_Card(),
            )
          ],
        )
      ],
    ));
  }
}
