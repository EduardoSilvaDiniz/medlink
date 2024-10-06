import 'package:flutter/material.dart';
import 'package:medlink/widgets/app_bar_manpage.dart';
import 'package:medlink/widgets/hamburger_button.dart';
import 'package:medlink/widgets/searchbar_manpage.dart';

class Scheduling extends StatelessWidget {
  const Scheduling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarManPage(),
      drawer: const HamburgerButton(),
      body: Column(
        children: [
          const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "AGENDAMENTO",
                  style: TextStyle(fontSize: 24, color: Colors.blue),
                ),
              )),
          _iconWithTitle(Icons.emergency, "Selecione uma especialidade"),
          const SafeArea(child: SearchBarForManPage()),
          Expanded(
            child: _createListMed(context),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.exit_to_app),
      ),
    );
  }

  Widget _createListMed(BuildContext context) {
    final List<String> items = [
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

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Row(
            children: [
              const Icon(Icons.add),
              Text(items[index]),
            ],
          ),
        );
      },
    );
  }

  //TODO este metodo é igual ao buildButton da classe gridButtons, crie uma classe para suprir ambos
  Widget _iconWithTitle(IconData icon, String text) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
            child: Flexible(
              child: Container(
                height: 150,
                width: 150,
                color: Colors.blue,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 85,
                ),
              ),
            )),
        Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
