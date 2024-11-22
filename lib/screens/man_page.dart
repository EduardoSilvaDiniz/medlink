import 'package:flutter/material.dart';
import 'package:medlink/factorys/factory_body.dart';
import 'package:medlink/widgets/app_bar_build.dart';
import 'package:medlink/widgets/hamburger_button.dart';
import 'package:medlink/screens/user_page.dart';

class ManPage extends StatefulWidget {
  const ManPage({super.key});

  @override
  State<ManPage> createState() => _ManPageState();
}

class _ManPageState extends State<ManPage> {
  int index = 0;

  List<Widget> listBody = const [
    FactoryBodyManPage(),
    UsersPage(),
    FactoryBodyManPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarBuild(),
        drawer: const HamburgerButton(),
        body: listBody[index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (int index) => setState(() {
                  this.index = index;
                }),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
            ]));
  }
}

