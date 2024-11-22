import 'package:flutter/material.dart';

class StyledTitleButton extends StatelessWidget{
  const StyledTitleButton(String title, IconData icon, {super.key});

  String get title => "";
  IconData? get icon => null;

  @override
  Widget build(BuildContext context) {
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
              fontWeight: FontWeight.bold))
    ]);
  }
}
