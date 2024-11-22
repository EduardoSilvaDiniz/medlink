import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medlink/data/reserve.dart';
import 'package:medlink/widgets/block_consult.dart';
import 'package:medlink/widgets/searchbar_build.dart';

List<Reserve> reservasList = [];

void addListReserve(Reserve novo) {
  reservasList.add(novo);
  printValues();
}

void printValues() {
  for (var element in reservasList) {
    log("added ${element.getDoctor()} and ${element.getData()}");
  }
}

class MyConsult extends StatefulWidget {
  const MyConsult({super.key});

  @override
  MyConsultState createState() => MyConsultState();
}

class MyConsultState extends State<MyConsult> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                  child: Text('Consultas Agendadas:',
                      style: TextStyle(fontSize: 30, color: Colors.blue)))),
          const Padding(padding: EdgeInsets.all(30.0), child: SearchBarBuild()),
          ConsultationSection(reservasList)
        ]));
  }
}
