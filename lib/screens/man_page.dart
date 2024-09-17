import 'package:flutter/material.dart';
import 'package:medlink/factory.dart';
import 'package:medlink/widgets/app_bar_custom.dart';
import 'package:medlink/widgets/hamburger_button.dart';

class ManPage extends StatefulWidget {
  const ManPage({super.key});
  @override
  State<ManPage> createState() => _ManPageState();
}

class _ManPageState extends State<ManPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustom(),
      drawer: HamburgerButton(),
      body: Factory(),
    );
  }
}