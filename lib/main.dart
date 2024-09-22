import 'package:flutter/material.dart';
import 'home_screen.dart'; // Importando a nova classe

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medlink',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Usando a nova classe
    );
  }
}
