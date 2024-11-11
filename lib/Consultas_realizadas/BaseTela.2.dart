  import 'package:flutter/material.dart';
  import '../Pagina_inicial/BarraDeBusca.dart';

  abstract class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

    @override
    _BaseScreenState createState() => _BaseScreenState();
  }

  class _BaseScreenState extends State<BaseScreen> {
    final TextEditingController searchController = TextEditingController();

    void onSearch() {
      print('Searching for: ${searchController.text}');
    }

    @override
    void dispose() {
      searchController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Tela Base'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(
              controller: searchController,
              onSearch: onSearch,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Consultas Agendadas:',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(child: buildContent()),
          ],
        ),
      );
    }

    Widget buildContent() {
      // TODO: implement buildContent
      throw UnimplementedError();
    }
  }
