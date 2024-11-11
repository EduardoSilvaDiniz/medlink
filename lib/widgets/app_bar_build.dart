import 'package:flutter/material.dart';

class AppBarBuild extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Align(
            alignment: Alignment.centerRight,
            child: Text('MEDLINK',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white))));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
