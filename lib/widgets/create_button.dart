import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  CreateButton({super.key,required this.route, required this.icon, required this.title});

  String route;
  IconData icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
    ElevatedButton(onPressed: () => Navigator.pushNamed(context, route), child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
        child: Container(
            height: 64,
            width: 64,
            color: Colors.blue,
            child: Icon(icon, color: Colors.white, size: 24)))),
      Text(title,
          style: const TextStyle(
              fontSize: 16,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold))

    ]);
  }
}
