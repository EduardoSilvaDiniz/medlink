import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.person_2_rounded),
          _name(),
          _cpf(),
        ],
      ),
    );
  }

  Widget _cpf(){
    return const Row(
      children: [
        Text("CPF:"),
        Text("000.000.000-00")
      ],
    );
  }

  Widget _name(){
    return const Row(
      children: [
        Text("NOME:"),
        Text("USER")
      ],
    );
  }
}