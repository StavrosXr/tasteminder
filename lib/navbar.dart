import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/collection.dart';
import 'pages/newentry.dart';
import 'pages/map.dart';
import 'pages/profile.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Collection(),
    NewEntry(),
    MapPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFF9DBC3), // Background color
        selectedItemColor: Color(0xFFEF8C40), // Selected icon color
        unselectedItemColor: Color(0xFF596374), // Unselected icon color
        selectedFontSize: 0, // Remove text under the icon
        unselectedFontSize: 0, // Remove text under the icon
        iconSize: 36, // Increase icon size
        items: [
          BottomNavigationBarItem(
            icon: InkResponse(
              child: Icon(Icons.home),
              onTap: () => _onNavItemTapped(0),
              splashColor: Colors.transparent, // Remove splash color
              highlightColor: Colors.transparent, // Remove highlight color
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkResponse(
              child: Icon(Icons.collections),
              onTap: () => _onNavItemTapped(1),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkResponse(
              child: Icon(Icons.add),
              onTap: () => _onNavItemTapped(2),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkResponse(
              child: Icon(Icons.map),
              onTap: () => _onNavItemTapped(3),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkResponse(
              child: Icon(Icons.person),
              onTap: () => _onNavItemTapped(4),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
