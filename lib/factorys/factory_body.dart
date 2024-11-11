import 'package:flutter/material.dart';
import 'package:medlink/data/get_data_user.dart';
import 'package:medlink/widgets/grid_buttons.dart';
import 'package:medlink/widgets/searchbar_build.dart';

class FactoryBodyManPage extends StatelessWidget {
  const FactoryBodyManPage({super.key});

  final bool shrinkWrap = true;
  final int crossAxisAlignment = 2;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: _createTituleAndSearchbar()),
      Expanded(child: GridButtons().build(context)),
    ]);
  }

  Widget _createTituleAndSearchbar() {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("Olá, (${GetDataUser.getUserName()}).",
              style: const TextStyle(fontSize: 24, color: Colors.blue))),
      const SizedBox(height: 10),
      const SearchBarBuild()
    ]);
  }
}
