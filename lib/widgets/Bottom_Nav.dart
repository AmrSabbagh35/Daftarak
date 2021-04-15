import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_login/screens/Nav_Bar_Pages/nav_screens.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    Homescreen(),
    Logs_Screen(),
    Container(
      color: Colors.blue,
    ),
    Warehouse_screen(),
    Profile_Screen(),
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
            selectedLabelStyle: TextStyle(fontSize: 10),
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30),
                label: "Home",
                activeIcon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book, size: 30),
                label: "Logs",
                activeIcon: Icon(
                  Icons.menu_book,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calculate_rounded,
                    size: 30,
                  ),
                  activeIcon: Icon(
                    Icons.calculate_outlined,
                    size: 30,
                  ),
                  label: "Add"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.local_shipping,
                    size: 30,
                  ),
                  activeIcon: Icon(
                    Icons.local_shipping_outlined,
                    size: 30,
                  ),
                  label: "Warehouse"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30),
                label: 'Profile',
                activeIcon: Icon(
                  Icons.person_outline_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
