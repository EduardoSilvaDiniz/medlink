import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 8.0,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
