import 'package:flutter/material.dart';
import 'nova_tela.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                'Medlink',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue[800],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Início', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Perfil', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Configurações', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.new_releases, color: Colors.white),
              title: Text('Nova Tela', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NovaTela()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Sair', style: TextStyle(color: Colors.white)),
              onTap: () {

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
