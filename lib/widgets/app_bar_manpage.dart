import 'package:flutter/material.dart';

class AppBarManPage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarManPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Align(
            alignment: Alignment.centerRight,
            child: Text("medlink", style: TextStyle(color: Colors.white))),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blueAccent);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}