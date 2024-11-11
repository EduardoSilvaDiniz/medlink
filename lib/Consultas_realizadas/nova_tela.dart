import 'package:flutter/material.dart';
import '../Pagina_inicial/BarraDeBusca.dart';
import '../Pagina_inicial/BarraInferiorDeNavegacao.dart';
import 'ListaConsultas.dart';

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
            controller: TextEditingController(),
            onSearch: () {

            },
          ),

          Container(
            color: Colors.blue,
            height: 8,
          ),

          NovaConsultationSection(),

          Container(
            color: Colors.grey[300],
            height: 8,
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: 0,
        onItemTapped: (index) {

        },
      ),
    );
  }
}