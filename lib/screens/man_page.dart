import 'package:flutter/material.dart';

import 'package:medlink/factorys/factory_body.dart';
import 'package:medlink/screens/navegationBarPages/users.dart';
import 'package:medlink/widgets/app_bar_build.dart';
import 'package:medlink/widgets/hamburger_button.dart';

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
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: '',),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
            ]));
  }
}


class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.person_2_rounded,size: 400,),
          const Divider(),
          _name(),
          const Divider(),
          _cpf(),
        ],
      ),
    );
  }

  Widget _cpf(){
    return const Row(
      children: [
        Text("CPF:",style: TextStyle(color: Colors.blue,fontSize: 40),),
        Text("000.000.000-00",style: TextStyle(fontSize: 20),)
      ],
    );
  }

  Widget _name(){
    return const Row(
      children: [
        Text("NOME:",style: TextStyle(color: Colors.blue,fontSize: 40),),
        Text("USER",style: TextStyle(fontSize: 20),)
      ],
    );
  }
}