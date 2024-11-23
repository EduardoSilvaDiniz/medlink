import 'package:flutter/material.dart';

class ListMeds extends StatelessWidget {
  final List<ListItem> items;

  const ListMeds({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(title: item.buildTitle(context));
        });
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);
}