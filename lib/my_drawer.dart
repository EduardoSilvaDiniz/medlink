import 'package:flutter/material.dart';
import 'nova_tela.dart'; // Certifique-se de importar sua nova tela

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[900], // Azul escuro
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
                color: Colors.blue[800], // Um tom um pouco mais claro
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Início', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Fecha o menu
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Perfil', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Fecha o menu
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Configurações', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Fecha o menu
              },
            ),
            Divider(color: Colors.white), // Divisor
            ListTile(
              leading: Icon(Icons.new_releases, color: Colors.white),
              title: Text('Nova Tela', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NovaTela()), // Navega para NovaTela
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Sair', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Ação de logout
                Navigator.pop(context); // Fecha o menu
              },
            ),
          ],
        ),
      ),
    );
  }
}
