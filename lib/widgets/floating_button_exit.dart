import 'package:flutter/material.dart';

class FloatingButtonExit extends StatelessWidget {
  const FloatingButtonExit({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.exit_to_app));
  }

}
