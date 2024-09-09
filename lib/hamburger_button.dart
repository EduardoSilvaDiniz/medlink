import 'package:flutter/material.dart';

class HamburgerButton {
  static Widget buildHambugerButton() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.supervised_user_circle,
                  size: 60,
                ),
                Column(
                  children: [
                    Text('USUARIO', style: TextStyle(fontSize: 24)),
                    Text('000.000.000-00', style: TextStyle(fontSize: 14)),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            title: const Text('Histórico de consultas'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Notificações'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
