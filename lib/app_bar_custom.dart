import 'package:flutter/material.dart';

class AppbarCustom {
  static AppBar buildAppbar() {
    return AppBar(
      title: const Align(
        alignment: Alignment.centerRight,
        child: Text("Medlink"),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
