import 'package:flutter/material.dart';

class GridButtons {
  static List<Widget> build() {
    return <Widget>[
      _buildButton(Icons.view_agenda_outlined, "AGENDAMENTO"),
      _buildButton(Icons.phone_callback_outlined, "CENTRAL 24 HORAS"),
      _buildButton(Icons.medical_services, "MINHAS CONSULTAS"),
      _buildButton(Icons.chat, "CHAT"),
      _buildButton(Icons.payments, "PAGAMENTOS"),
      _buildButton(Icons.help, "AJUDA"),
    ];
  }

  static void _actionOnTap(BuildContext context) {
    // Navigator.push(
    //   // context,
    //   // MaterialPageRoute(builder: (context) => const SecondRoute(context)),
    // );
  }

  static Widget _buildButton(IconData icon, String text) {
    return Column(
        children: [
          InkWell(
            onTap: () {
              // actionOnTap();
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
