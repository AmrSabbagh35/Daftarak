import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalenderCard extends StatefulWidget {
  @override
  _CalenderCardState createState() => _CalenderCardState();
}

class _CalenderCardState extends State<CalenderCard> {
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat.yMMMMd('en_US');
  final String formatted = formatter.format(now);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Card(
          color: Colors.grey[50],
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                bottom: 0,
                right: 20,
                left: 20,
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              Positioned(
                top: -28,
                left: -15,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  width: 217,
                  // decoration:BoxDecoration(gradient: LinearGradient(colors: [Colors.blue.withOpacity(0.7), Colors.lightBlue],)),
                  height: 75,
                  child: Card(
                    color: Colors.blue[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            formatted,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                  Column(
                    children: [Text('data')],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
