import 'package:flutter/material.dart';
import 'package:medlink/widgets/create_button.dart';

class GridButtons extends StatefulWidget {
  const GridButtons({super.key});

  @override
  State<GridButtons> createState() => _GridButtons();
}

class _GridButtons extends State<GridButtons> {
  final List<Map<String, dynamic>> _buttonData = [
    {'title': 'AGENDAMENTO', 'icon': Icons.view_agenda_outlined, 'route': '/scheduling' },
    {'title': 'CENTRAL 24 HORAS', 'icon': Icons.phone_callback_outlined, 'route': '/' },
    {'title': 'MINHAS CONSULTAS', 'icon': Icons.medical_services, 'route': '/consult' },
    {'title': 'CHAT', 'icon': Icons.chat, 'route': '/'},
    {'title': 'PAGAMENTOS', 'icon': Icons.payments, 'route': '/pay'},
    {'title': 'AJUDA', 'icon': Icons.help, 'route': '/'}
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        const CreateButton(route: "/scheduling", icon: Icons.view_agenda_outlined, title: "AGENDAMENTO"),
        CreateButton(route: _buttonData[1]['route'], icon: _buttonData[1]['icon'], title: _buttonData[1]['title']),
        CreateButton(route: _buttonData[2]['route'], icon: _buttonData[2]['icon'], title: _buttonData[2]['title']),
        CreateButton(route: _buttonData[3]['route'], icon: _buttonData[3]['icon'], title: _buttonData[3]['title']),
        CreateButton(route: _buttonData[4]['route'], icon: _buttonData[4]['icon'], title: _buttonData[4]['title']),
        CreateButton(route: _buttonData[5]['route'], icon: _buttonData[5]['icon'], title: _buttonData[5]['title'])
      ]);
  }
}
