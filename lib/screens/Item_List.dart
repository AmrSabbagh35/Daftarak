import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_login/models/logic/operations.dart';

class PlaceHolder extends StatefulWidget {
  @override
  _PlaceHolderState createState() => _PlaceHolderState();
}

class _PlaceHolderState extends State<PlaceHolder> {
  List<String> litems = ["title"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            'Your Logs',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
        _buildItem("title", "subtitle"),
      ],
    ));
  }
}

Widget _buildItem(String title, String subtitle) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Card(
          elevation: 5,
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ),
        // Divider(),
      ],
    ),
  );
}
