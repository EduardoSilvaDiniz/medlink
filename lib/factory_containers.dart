import 'package:flutter/material.dart';

class FactoryContainers {
  double sizeHeight = 50;

  List<Widget> containerButtons(BuildContext context) {
    return <Widget>[
      // Buttons.createButton(context),
      // Buttons.createButton(context),
    ];
  }

  List<Widget> containerTopBody(BuildContext context) {
    return <Widget>[
      const Align(
        alignment: Alignment.center,
        child: Text(
          "Olá, (Usuario).",
          style: TextStyle(fontSize: 24),
        ),
      ),
      // SearchBarCustom.buildSearchBar(),
    ];
  }

  List<Widget> construcaoDosBotoesEmFormaGrid(BuildContext context) {
    //   GridView.count(
    return <Widget>[
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
    ];
  }
}
