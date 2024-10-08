import 'package:flutter/material.dart';
import 'package:medlink/data/get_data_user.dart';

class HamburgerButton extends StatelessWidget {
  const HamburgerButton({super.key});
  final int _notifications = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromRGBO(11, 88, 216, 1.0),
        child: ListView(padding: EdgeInsets.zero, children: [
          _createTopbar(),
          const Divider(),
          _createOption(Icons.history, "Histórico de consultas"),
          _createOptionTopdown(Icons.notifications_outlined, "Notificaçõesa"),
          const Divider(),
          _createOption(Icons.exit_to_app, "Sair")
        ]));
  }

  // ignore: unused_element
  Widget _createTopbar() {
    return Row(children: [
      const Icon(
        Icons.person,
        size: 60,
        color: Colors.white,
      ),
      Column(children: [
        Text(GetDataUser.getUserName(),
            style: const TextStyle(fontSize: 24, color: Colors.white)),
        Text(GetDataUser.getUserCpf(),
            style: const TextStyle(fontSize: 14, color: Colors.white)),
      ])
    ]);
  }

  Widget _createOption(IconData icon, String text) {
    return ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(text, style: const TextStyle(color: Colors.white)),
        onTap: () {});
  }

  Widget _createOptionTopdown(IconData icon, String text) {
    return ExpansionTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(text, style: const TextStyle(color: Colors.white)),
        iconColor: Colors.white,
        children: _verificationNotifications());
  }

  List<Widget> _verificationNotifications() {
    if (_notifications == 0) {
      return <Widget>[
        const ListTile(
            title: Text('não há notificações',
                style: TextStyle(color: Colors.white))),
      ];
    } else {
      return <Widget>[
        const ListTile(
            title:
                Text('há notificações', style: TextStyle(color: Colors.white))),
      ];
    }
  }
}
