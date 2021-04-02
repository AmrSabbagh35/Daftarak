import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:test_login/widgets/widget.dart';

import 'Item_List.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceHolder(),
    Container(),
    Container(
      color: Colors.blue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        title: Center(child: Text('My App')),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          child: BottomNavigationBar(
            onTap: onTabTapped,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.teal,
            selectedLabelStyle: TextStyle(fontSize: 14),
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: "Home",
              ),
              BottomNavigationBarItem(icon: FAB_Widget(), label: ""),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              )
            ],
          ),
        ),
      ),
    );
  }
}
