import 'package:flutter/material.dart';

class ButtonNextPage extends StatelessWidget {
  ButtonNextPage(this.label, this.route, {super.key});

  String label;
  String route;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, route),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
        child: Text(label, style: const TextStyle(color: Colors.white)));
  }
}
