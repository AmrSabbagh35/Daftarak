import 'package:flutter/material.dart';
import 'package:test_login/translations/local_keys.g.dart';
import 'package:test_login/widgets/widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

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
            LocaleKeys.Home_Welcome_text.tr(),
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
