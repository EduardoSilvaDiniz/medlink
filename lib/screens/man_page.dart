import 'package:flutter/material.dart';
import 'package:medlink/data/get_data_user.dart';
import 'package:medlink/screens/user_page.dart';
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
    Home(),
    UsersPage(),
    Home(),
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("Olá, (${GetDataUser.getUserName()}).",
              style: const TextStyle(fontSize: 24, color: Colors.blue))),
      const SizedBox(height: 10),
      ElevatedButton( onPressed: () => Navigator.pushNamed(context, "/scheduling"), child: const Text("AGENDAMENTO")),
      ElevatedButton( onPressed: () => Navigator.pushNamed(context, "/consult"), child: const Text("MINAS CONSULTAS")),
      ElevatedButton( onPressed: () => Navigator.pushNamed(context, "/pay"), child: const Text("PAGAMENTOS"))
    ]);
  }
}
