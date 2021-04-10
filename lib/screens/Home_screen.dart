import 'package:flutter/material.dart';
import 'package:test_login/widgets/Calendar_card.dart';
import 'package:test_login/widgets/DailyBox_Card.dart';
import 'package:test_login/widgets/Reminder_Card.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
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
          height: 5,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              height: screensize / 5,
              width: double.infinity,
              child: CalenderCard(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: double.infinity,
              height: screensize / 5,
              child: RemindersCard(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: double.infinity,
              height: screensize / 5,
              child: DailyBox_Card(),
            )
          ],
        )
      ],
    ));
  }
}
