import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Icon(Icons.person_2_rounded, size: 400),
      const Divider(),
      _name(),
      const Divider(),
      _cpf()
    ]);
  }

  Widget _cpf() {
    return const Row(children: [
      Text("CPF:", style: TextStyle(color: Colors.blue, fontSize: 40)),
      Text("000.000.000-00", style: TextStyle(fontSize: 20))
    ]);
  }

  Widget _name() {
    return const Row(children: [
      Text("NOME:", style: TextStyle(color: Colors.blue, fontSize: 40)),
      Text("USER", style: TextStyle(fontSize: 20))
    ]);
  }
}
