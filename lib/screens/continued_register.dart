import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CadastroPage1());
  }
}

class CadastroPage1 extends StatelessWidget {
  const CadastroPage1({super.key});

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
              const SizedBox(height: 150.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(children: [
                    TextField(
                        decoration: InputDecoration(
                            hintText: "Nome",
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
                    TextField(
                        decoration: InputDecoration(
                            hintText: "Confirme sua senha",
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
                    const SizedBox(height: 60),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 15)),
                        child: const Text("Continuar",
                            style: TextStyle(color: Colors.white)))
                  ])),
              const Spacer(),
            ])));
  }
}
