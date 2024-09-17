import 'package:flutter/material.dart';
import 'package:medlink/widgets/grid_buttons.dart';
import 'package:medlink/widgets/searchbar.dart';

class Factory extends StatelessWidget {
  final bool shrinkWrap = true;
  final int crossAxisAlignment = 2;

  const Factory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        children: _construcaoDoFilhoColumn(),
      ),
      const Spacer(),
      GridView.count(
        shrinkWrap: shrinkWrap,
        crossAxisCount: crossAxisAlignment,
        children: _construcaoDoFilhoGridView(),
      ),
    ]);
  }

  List<Widget> _construcaoDoFilhoColumn() {
    return <Widget>[
      const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Olá, (Usuario).",
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
      const SearchBarCustom(),
    ];
  }

  List<Widget> _construcaoDoFilhoGridView() {
    return GridButtons.build();
  }
}
