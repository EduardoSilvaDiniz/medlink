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

}
