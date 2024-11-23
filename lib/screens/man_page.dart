import 'package:flutter/material.dart';
import 'package:medlink/data/get_data_user.dart';
import 'package:medlink/screens/user_page.dart';
import 'package:medlink/widgets/app_bar_build.dart';
import 'package:medlink/widgets/create_button.dart';
import 'package:medlink/widgets/grid_buttons.dart';
import 'package:medlink/widgets/hamburger_button.dart';

class ManPage extends StatefulWidget {
  const ManPage({super.key});

  @override
  State<ManPage> createState() => _ManPageState();
}

class _ManPageState extends State<ManPage> {
  int index = 0;

  List<Widget> listBody = [
    Home(),
    const UsersPage(),
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
  Home({super.key});

  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    backgroundColor: Colors.transparent, // Set the background color to transparent
    overlayColor: Colors.transparent,
    elevation: 0, // Remove the default elevation
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Customize the button's shape
    ),
  );


  @override
  Widget build(BuildContext context) {
    return GridButtons();
  }
}
