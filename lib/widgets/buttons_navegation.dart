import 'package:flutter/material.dart';
import 'package:medlink/screens/man_page.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ManPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white), label: ''),
      BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.white), label: ''),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.white), label: '')
    ], backgroundColor: Colors.blue, onTap: _onItemTapped);
  }
}
