import 'package:flutter/material.dart';
import 'package:test_login/widgets/Calendar_card.dart';
import 'package:test_login/widgets/Reminder_Card.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            "Welcome, \nSelect an option",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 20,
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
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
              ),
            )
          ],
        )
      ],
    ));
  }
}
