import 'package:flutter/material.dart';
import 'package:medlink/screens/man_page.dart';
import 'package:medlink/screens/scheduling.dart';

class Button {
  static final List<Widget> _screens = [
    const ManPage(),
    Scheduling(),
  ];

  static Widget buttonClick(String title, IconData icon, int screen, BuildContext context) {
    return Column(children: [
      InkWell(
          onTap: () {
            _actionOnTap(context, screen);
          },
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              child: Flexible(
                  child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.blue,
                      child: Icon(icon,
                          color: Colors.white, size: 85))))),
      Text(title,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold)),
    ]);
  }

  static Widget buttonTitle(String title, IconData icon) {
    return Column(children: [
      ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
          child: Flexible(
              child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                  child: Icon(icon, color: Colors.white, size: 85)))),
      Text(title,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold)),
    ]);
  }

  static void _actionOnTap(BuildContext context, int index) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => _screens[index]));
  }
}
