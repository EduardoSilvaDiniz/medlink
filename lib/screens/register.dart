import 'package:flutter/material.dart';
import 'package:medlink/widgets/button_next_page.dart';
import 'package:medlink/widgets/stylized_text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15));
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
                    StylizedTextField("Nome"),
                    const SizedBox(height: 20),
                    StylizedTextField("E-mail"),
                    const SizedBox(height: 20),
                    StylizedTextField("Senha"),
                    const SizedBox(height: 20),
                    StylizedTextField("Confirme sua senha"),
                    const SizedBox(height: 60),
                    ButtonNextPage("Continuar", "/continued-register"),
                  ])),
              const Spacer()
            ])));
  }
}
