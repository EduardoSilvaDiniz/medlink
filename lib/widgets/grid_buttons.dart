import 'package:flutter/material.dart';
import 'package:medlink/widgets/button.dart';

class GridButtons extends StatelessWidget {
  GridButtons({super.key});

  final List<String> _texts = [
    'AGENDAMENTO',
    'CENTRAL 24 HORAS',
    'MINHAS CONSULTAS',
    'CHAT',
    'PAGAMENTOS',
    'AJUDA'
  ];

  final List<IconData> _icons = [
    Icons.view_agenda_outlined,
    Icons.phone_callback_outlined,
    Icons.medical_services,
    Icons.chat,
    Icons.payments,
    Icons.help
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
        ),
        itemCount: _icons.length,
        itemBuilder: (context, index) {
          return Button.buttonClick(_texts[index], _icons[index], 1, context);
        });
  }
}
