import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlaceHolder extends StatelessWidget {
  List<String> litems = [
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
    "1",
    "2",
    "3",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: litems.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Card(
            elevation: 20,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: ListTile(
              title: Text(litems[index]),
              leading: CircleAvatar(
                radius: 20,
                child: Icon(FontAwesomeIcons.apple),
              ),
            ),
          );
        });
  }
}
