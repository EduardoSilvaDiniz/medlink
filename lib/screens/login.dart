import 'package:flutter/material.dart';
import 'package:medlink/widgets/button_next_page.dart';
import 'package:medlink/widgets/stylized_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              const SizedBox(height: 60),
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
                    StylizedTextField("Email"),
                    const SizedBox(height: 20),
                    StylizedTextField("Senha"),
                    const SizedBox(height: 20),
                    ButtonNextPage("Entrar", "/home"),
                    const SizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text("Ou", style: TextStyle(color: Colors.grey)),
                      const SizedBox(width: 5),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/register");
                          },
                          child: const Text("Cadastre-se",
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline)))
                    ])
                  ])),
              const Spacer()
            ])));
  }
}
