import 'package:flutter/material.dart';
import 'package:medlink/screens/reservation_page.dart';
import 'package:medlink/widgets/list_med.dart';

class ButtonTitleClick implements ListItem {
  final String title;

  ButtonTitleClick(this.title);

  @override
  Widget buildTitle(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.blue.shade900),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => ReservationPage(title))),
        child: Row(children: [
          const Icon(Icons.add, color: Colors.white,),
          Text(title, style: const TextStyle(fontSize: 24, color: Colors.white))
        ]));
  }
}