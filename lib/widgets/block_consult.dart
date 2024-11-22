import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medlink/data/reserve.dart';

class ConsultationSection extends StatefulWidget {
  final List<Reserve> _reserveList;
  const ConsultationSection(this._reserveList, {super.key});

  @override
  ConsultationSectionState createState() => ConsultationSectionState();
}

class ConsultationSectionState extends State<ConsultationSection> {
  List<Widget> _myList = [];
  final List<bool> _states = [];
  @override
  void initState() {
    super.initState();
    _myList = createListforShow();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: _myList);
  }

  List<Widget> createListforShow() {
    List<Widget> novo = [];
    for (var element in widget._reserveList) {
      _states.add(false);
      novo.add(_buildConsultationTile(
          element.getSpecialty(),
          element.getDoctor(),
          element.getData(),
          element.getExpansed(),
          _states.length - 1));
    }
    return novo;
  }

  Widget _buildConsultationTile(String specialty, String doctor, String date,
      bool isExpanded, int index) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.blue.shade900,
            borderRadius: BorderRadius.circular(50.0)),
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(specialty,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            Row(children: [
              IconButton(
                  icon: const Icon(Icons.add, color: Colors.white),
                  onPressed: () {
                    createNewList(true, index);
                  }),
              IconButton(
                  icon: const Icon(Icons.remove, color: Colors.white),
                  onPressed: () {
                    createNewList(false, index);
                  })
            ])
          ]),
          if (isExpanded) _buildExpandedInfo(doctor, date)
        ]));
  }

  Widget _buildExpandedInfo(String doctor, String date) {
    return Container(
        margin: const EdgeInsets.only(top: 16.0),
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(doctor,
              style: const TextStyle(color: Colors.black, fontSize: 18.0)),
          Text('Data: $date', style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 16.0),
          Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                  onPressed: () {
                    log('Entrando na consulta...');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 12.0),
                      backgroundColor: Colors.green),
                  child: const Text('Entrar')))
        ]));
  }

  void createNewList(bool valor, int index) {
    _states[index] = valor;
    setState(() {
      _myList = again();
    });
  }

  List<Widget> again() {
    List<Widget> newList = [];
    Reserve element;
    for (int i = 0; i < _states.length; i++) {
      element = widget._reserveList[i];
      newList.add(_buildConsultationTile(element.getSpecialty(),
          element.getDoctor(), element.getData(), _states[i], i));
    }
    return newList;
  }
}
