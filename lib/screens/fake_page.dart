import 'package:flutter/material.dart';

class PageFake extends StatelessWidget {
  const PageFake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('FAKE PAGE')),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'))));
  }
}
