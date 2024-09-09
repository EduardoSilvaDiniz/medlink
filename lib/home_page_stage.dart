import 'package:flutter/material.dart';
import 'package:medlink/app_bar_custom.dart';
import 'package:medlink/factory_containers.dart';
import 'package:medlink/hamburger_button.dart';
import 'package:medlink/home_page.dart';

class MyHomePageState extends State<MyHomePage> {
  double spacing = 8.0;
  double runSpacing = 4.0;
  Color background = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarCustom.buildAppbar(),
        drawer: HamburgerButton.buildHambugerButton(),
        body: Column(
          children: [
            Column(
              children: FactoryContainers.containerTopBody(context),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.phone,
                        size: 150,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
