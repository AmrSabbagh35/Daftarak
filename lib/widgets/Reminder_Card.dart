import 'package:flutter/material.dart';
import 'package:test_login/screens/Todo_Pages/todo_screens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_login/translations/local_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class RemindersCard extends StatefulWidget {
  @override
  _RemindersCardState createState() => _RemindersCardState();
}

class _RemindersCardState extends State<RemindersCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(255, 202, 62, 0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: InkWell(
        splashColor: Colors.yellow,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TodoList()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.yellow[200],
                  child: Image.asset(
                    'assets/images/re.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Card(
                    color: Colors.brown[300],
                    elevation: 10,
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        LocaleKeys.Home_reminder_text.tr(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
