import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  const CreateButton(
      {super.key,
      required this.route,
      required this.icon,
      required this.title});

  final String route;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
          onTap: () {
            Navigator.pushNamed(context, route);
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
                      child: Icon(icon, color: Colors.white, size: 85))))),
      Text(title,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold))
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
              fontWeight: FontWeight.bold))
    ]);
  }
}
