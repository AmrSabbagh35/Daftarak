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
      color: Color.fromRGBO(255, 202, 62, 0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: InkWell(
        splashColor: Colors.yellow,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TodoList()));
        },
        child: Stack(children: [
          Positioned(
              top: 10,
              left: 320,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.yellow[200],
                child: Image.asset(
                  'assets/images/re.png',
                  fit: BoxFit.cover,
                ),
              )),
          Column(
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
                          'Today\'s \n Reminder :',
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
        ]),
      ),
    );
  }
}
