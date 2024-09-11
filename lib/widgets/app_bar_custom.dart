import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Align(
        alignment: Alignment.centerRight,
        child: Text("medlink"),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
