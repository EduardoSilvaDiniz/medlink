import 'package:flutter/material.dart';

class Factory extends ListBody {
  const Factory({super.key});
  final int crossAxisAlignment = 2;
  final bool shrinkWrap = true;

  List<Widget> build() {
    return <Widget>[
      Row(
        children: _construcaoDoFilhoRow(),
      ),
      Column(
        children: _construcaoDoFilhoColumn(),
      ),
      GridView.count(
        shrinkWrap: shrinkWrap,
        crossAxisCount: crossAxisAlignment,
        children: _construcaoDoFilhoGridView(),
      ),
    ];
  }

  List<Widget> _construcaoDoFilhoRow() {
    return <Widget>[
      //barraDePesquisa()
      //Icone()
    ];
  }

  List<Widget> _construcaoDoFilhoColumn() {
    return <Widget>[
      //barraDePesquisa()
      //Icone()
    ];
  }

  List<Widget> _construcaoDoFilhoGridView() {
    return <Widget>[
      //barraDePesquisa()
      //Icone()
    ];
  }
}
