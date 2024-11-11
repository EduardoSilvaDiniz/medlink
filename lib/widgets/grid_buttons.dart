import 'package:flutter/material.dart';
import 'package:medlink/widgets/create_button.dart';

class GridButtons extends StatelessWidget {
  GridButtons({super.key});

  final List<Map<String, dynamic>> _buttonData = [
    {
      'title': 'AGENDAMENTO',
      'icon': Icons.view_agenda_outlined,
      'route': '/scheduling'
    },
    {
      'title': 'CENTRAL 24 HORAS',
      'icon': Icons.phone_callback_outlined,
      'route': '/'
    },
    {'title': 'MINHAS CONSULTAS', 'icon': Icons.medical_services, 'route': '/consult'},
    {'title': 'CHAT', 'icon': Icons.chat, 'route': '/'},
    {'title': 'PAGAMENTOS', 'icon': Icons.payments, 'route': '/pay'},
    {'title': 'AJUDA', 'icon': Icons.help, 'route': '/'}
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.1),
        itemCount: _buttonData.length,
        itemBuilder: (context, index) {
          final item = _buttonData[index];
          return CreateButton(
              route: item['route'], icon: item['icon'], title: item['title']);
        });
  }
}
