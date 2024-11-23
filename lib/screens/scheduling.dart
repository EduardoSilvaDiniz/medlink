import 'package:flutter/material.dart';
import 'package:medlink/screens/reservation_page.dart';
import 'package:medlink/widgets/button_title_click.dart';
import 'package:medlink/widgets/list_med.dart';

class Scheduling extends StatelessWidget {
  Scheduling({super.key});

  final List<String> _items = [
    "Alergista e Imunologista",
    "Anestesista",
    "Angiologista e Cirurgião Vascular",
    "Cardiologista",
    "Cirurgião Cardiovascular",
    "Cirurgião Geral",
    "Cirurgião Pediátrico",
    "Clínico Geral",
    "Dermatologista",
    "Endocrinologista",
    "Gastroenterologista",
    "Ginecologista e Obstetra",
    "Neurologista",
    "Oftalmologista",
    "Ortopedista",
    "Otorrinolaringologista",
    "Pediatra",
    "Pneumologista",
    "Psiquiatra",
    "Reumatologista",
    "Urologista"
  ];

  @override
  Widget build(BuildContext context) {
    /*
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          _titleCenter("AGENDAMENTO"),
          const Text("Selecione uma especialidade",
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold)),
          ListMeds(items: List.generate(_items.length, (i) => ButtonTitleClick(_items[i])))
        ]));

     */
    return Scaffold(
        appBar: AppBar(
          title: const Text("Escolha uma especialização"),
        ),
        body: ListMeds(
            items: List.generate(
                _items.length, (i) => ButtonTitleClick(_items[i]))));
  }

  Widget _titleCenter(String title) {
    return Center(
        child: Text(title,
            style: const TextStyle(fontSize: 24, color: Colors.blue)));
  }

}
