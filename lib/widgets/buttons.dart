import 'package:flutter/material.dart';
import '../../screens/page_fake.dart';

class Buttons {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  void accessFakePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PageFake()),
    );
  }

  Widget createButton(BuildContext context) {
    return ButtonTheme(
      minWidth: 500.0,
      height: 500.0,
      child: ElevatedButton(
        onPressed: () {},
        child: const Icon(
          Icons.phone,
          size: 150,
        ),
      ),
    );
  }
}
