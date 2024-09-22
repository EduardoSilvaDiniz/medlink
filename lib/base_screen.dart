import 'package:flutter/material.dart';
import 'CustomSearchBar.dart';
import 'consultation_section.dart';

abstract class BaseScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  void onSearch() {
    print('Searching for: ${searchController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Base'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(
            controller: searchController,
            onSearch: onSearch,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Consultas Agendadas:',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: buildContent()), // Método abstrato para o conteúdo
        ],
      ),
    );
  }

  Widget buildContent(); // Método abstrato para subclasses
}
