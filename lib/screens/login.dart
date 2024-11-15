import 'package:flutter/material.dart';

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
                    TextField(
                        decoration: InputDecoration(
                            hintText: "E-mail",
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide:
                                    const BorderSide(color: Colors.blue)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide:
                                    const BorderSide(color: Colors.blue)))),
                    const SizedBox(height: 20),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Senha",
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide:
                                    const BorderSide(color: Colors.blue)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide:
                                    const BorderSide(color: Colors.blue)))),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                            Navigator.pushNamed(context, "/home");
                },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 15)),
                        child: const Text("Entrar",
                            style: TextStyle(color: Colors.white))),
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
