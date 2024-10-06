import 'package:flutter/material.dart';
import 'package:medlink/screens/scheduling.dart';

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
        return _buildButton(_icons[index], _texts[index], context);
      },
    );
  }

  static void _actionOnTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Scheduling()),
    );
  }

  static Widget _buildButton(IconData icon, String text, BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            _actionOnTap(context);
          },
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              child: Flexible(
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 85,
                  ),
                ),
              )),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
