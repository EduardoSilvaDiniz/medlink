import 'package:flutter/material.dart';
import 'package:medlink/factorys/factory_body.dart';
// import 'package:medlink/screens/man_page.dart';

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({super.key});

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _currentIndex = 0;
  List<Widget> body = const [
    FactoryBodyManPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.person)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.settings))
        ],
        backgroundColor: Colors.blue);
  }
}
