import 'package:flutter/material.dart';

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
          margin: EdgeInsets.all(10),
          elevation: 5,
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: Icon(Icons.ac_unit),
            // dense: true,
          ),
        ),
        // Divider(),
      ],
    ),
  );
}
