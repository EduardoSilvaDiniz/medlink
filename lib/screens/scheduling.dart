import 'package:flutter/material.dart';
import 'package:medlink/widgets/app_bar_manpage.dart';
import 'package:medlink/widgets/button.dart';
import 'package:medlink/widgets/hamburger_button.dart';
import 'package:medlink/widgets/searchbar_manpage.dart';

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
    return Scaffold(
        appBar: const AppBarManPage(),
        drawer: const HamburgerButton(),
        body: _bobyScheduling(context),
        floatingActionButton: _createFloatingButton(context));
  }

  Widget _createFloatingButton(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.exit_to_app));
  }

  Widget _bobyScheduling(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(10.0),
          child: _titleCenter("AGENDAMENTO")),
      Button.buttonTitle("Selecione uma especialidade", Icons.emergency),
      const Padding(
          padding: EdgeInsets.all(30.0), child: SearchBarForManPage()),
      Expanded(
          child: DecoratedBox(
              decoration: const BoxDecoration(color: Colors.blue),
              child: _createListMed(context)))
    ]);
  }

  Widget _titleCenter(String title) {
    return Center(
        child: Text(title,
            style: const TextStyle(fontSize: 24, color: Colors.blue)));
  }

  Widget _createListMed(BuildContext context) {
    return ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _addtolistmed(_items[index]);
        });
  }

  Widget _addtolistmed(String text) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: const Color.fromARGB(38, 38, 38, 1)),
            onPressed: () {},
            child: Row(children: [
              const Icon(Icons.add, color: Colors.blue, size: 35),
              Text(text,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold))
            ])));
  }
}
