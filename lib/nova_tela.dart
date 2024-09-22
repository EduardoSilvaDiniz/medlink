import 'package:flutter/material.dart';
import 'custom_bottom_nav_bar.dart';
import 'CustomSearchBar.dart';
import 'NovaConsultationSection.dart'; // Importando a nova seção

class NovaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Tela'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título "Relatórios de Consultas Anteriores"
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Relatórios de Consultas Anteriores:',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          // Barra de pesquisa
          CustomSearchBar(
            controller: TextEditingController(), // Use um controlador se necessário
            onSearch: () {
              // Ação de pesquisa
            },
          ),
          // Barra azul abaixo da barra de pesquisa
          Container(
            color: Colors.blue, // Azul para a barra
            height: 8, // Altura da barra
          ),
          // Seção de consulta
          NovaConsultationSection(), // Usando a nova seção
          // Barra cinza de cardiologia
          Container(
            color: Colors.grey[300], // Cinza para a barra de cardiologia
            height: 8, // Altura da barra
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: 0, // Ajuste conforme necessário
        onItemTapped: (index) {
          // Ação ao selecionar um item na barra de navegação
        },
      ),
    );
  }
}
