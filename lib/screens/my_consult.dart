import 'package:flutter/material.dart';

import '../Pagina_inicial/BarraDeBusca.dart';
import '../Pagina_inicial/BlocoDeConsultas.dart';

class MyConsult extends StatefulWidget {
  const MyConsult({super.key});

  @override
  _MyConsultState createState() => _MyConsultState();
}

class _MyConsultState extends State<MyConsult> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onSearch() {
    print('Searching for: ${_searchController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Consultas Agendadas:',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          CustomSearchBar(
            controller: _searchController,
            onSearch: _onSearch,
          ),
          const ConsultationSection(),
          Expanded(child: Container())
        ]));
  }
}
