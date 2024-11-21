import 'package:flutter/material.dart';
import 'package:medlink/widgets/app_bar_build.dart';

class LastReservationPage extends StatefulWidget {
  const LastReservationPage({super.key});

  @override
  State<LastReservationPage> createState() => _LastReservationPageState();
}

class _LastReservationPageState extends State<LastReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuild(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Icon(Icons.check,size: 200,),
            const Text("A reserva foi feita com exito",style: TextStyle(fontSize: 30),),
            TextButton(
              onPressed: () {
                // Navegar de vuelta al home (pantalla principal)
                Navigator.popUntil(context, (route) {
                  return route.settings.name == '/home';  // Asegura que regrese a la pantalla de inicio
                });
              },
              child: const Text("OK",style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}