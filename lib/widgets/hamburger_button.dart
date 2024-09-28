import 'package:flutter/material.dart';

class HamburgerButton extends StatelessWidget {
  final int _notifications = 0;
  const HamburgerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(11, 88, 216, 1.0),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const Row(
            children: [
              Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
              Column(
                children: [
                  Text('USUARIO',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('000.000.000-00',
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                ],
              )
            ],
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.history,
              color: Colors.white,
            ),
            title: const Text(
              'Histórico de consultas',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ExpansionTile(
            leading: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            title: const Text('Notificações',
                style: TextStyle(color: Colors.white)),
            iconColor: Colors.white,
            children: _verificationNotifications(),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: const Text('Sair', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  List<Widget> _verificationNotifications() {
    if (_notifications == 0) {
      return <Widget>[
        const ListTile(title: Text('não há notificações', style: TextStyle(color: Colors.white))),
      ];
    } else {
      return <Widget>[
        const ListTile(title: Text('há notificações', style: TextStyle(color: Colors.white))),
      ];
    }
  }
}
