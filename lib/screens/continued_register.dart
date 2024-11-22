import 'package:flutter/material.dart';
import 'package:medlink/widgets/button_next_page.dart';
import 'package:medlink/widgets/stylized_text_field.dart';

class ContinuedRegister extends StatelessWidget {
  const ContinuedRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover)),
            child: Column(children: [
              const SizedBox(height: 40),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.monitor_heart_rounded,
                    color: Colors.white, size: 40),
                SizedBox(width: 8),
                Text("MEDLINK",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
              ]),
              const Spacer(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(children: [
                    StylizedTextField("CPF"),
                    const SizedBox(height: 20),
                    StylizedTextField("Data de nascimento"),
                    const SizedBox(height: 20),
                    StylizedTextField("Celular"),
                    const SizedBox(height: 20),
                    StylizedTextField("Gênero"),
                    const SizedBox(height: 60),
                  ])),
              ButtonNextPage("Cadastrar", "/login"),
              const Spacer(),
            ])));
  }
}
