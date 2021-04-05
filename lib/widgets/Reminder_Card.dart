import 'package:flutter/material.dart';
import 'package:test_login/screens/ToDo_List.dart';

class RemindersCard extends StatefulWidget {
  @override
  _RemindersCardState createState() => _RemindersCardState();
}

class _RemindersCardState extends State<RemindersCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: InkWell(
        splashColor: Colors.green,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TodoList()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Today\'s \n Reminder :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
