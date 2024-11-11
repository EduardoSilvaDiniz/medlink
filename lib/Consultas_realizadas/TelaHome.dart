import 'package:flutter/material.dart';
import '../Pagina_inicial/BarraDeAplicativo.dart';
import '../Pagina_inicial/MenuLateral.dart';
import '../Pagina_inicial/BarraDeBusca.dart';
import '../Pagina_inicial/BarraInferiorDeNavegacao.dart';
import '../Pagina_inicial/BlocoDeConsultas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medlink',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onSearch() {
    print('Searching for: ${_searchController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyAppBar(
        onMenuPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Consultas Agendadas:',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),

          CustomSearchBar(
            controller: _searchController,
            onSearch: _onSearch,
          ),

          ConsultationSection(),
          Expanded(
            child: Container(),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
