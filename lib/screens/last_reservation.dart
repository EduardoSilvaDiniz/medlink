import 'package:flutter/material.dart';

class LastReservationPage extends StatefulWidget {
  const LastReservationPage({super.key});

  @override
  State<LastReservationPage> createState() => _LastReservationPageState();
}

class _LastReservationPageState extends State<LastReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Icon(Icons.check, size: 200),
      const Text("A reserva foi feita com exito",
          style: TextStyle(fontSize: 30)),
      TextButton(
          onPressed: () {
            Navigator.popUntil(context, (route) {
              return route.settings.name == '/home';
            });
          },
          child: const Text("OK", style: TextStyle(fontSize: 20)))
    ])));
  }
}
