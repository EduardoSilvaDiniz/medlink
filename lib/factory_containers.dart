import 'package:flutter/material.dart';
import 'package:medlink/buttons.dart';
import 'package:medlink/searchbar.dart';

class FactoryContainers {
  static double sizeHeight = 50;

  static List<Widget> containerButtons(BuildContext context) {
    return <Widget>[
      Buttons.createButton(context),
      Buttons.createButton(context),
    ];
  }

  static List<Widget> containerTopBody(BuildContext context) {
    return <Widget>[
      const Align(
        alignment: Alignment.center,
        child: Text(
          "Olá, (Usuario).",
          style: TextStyle(fontSize: 24),
        ),
      ),

      SearchBarCustom.buildSearchBar(),
    ];
  }
}
