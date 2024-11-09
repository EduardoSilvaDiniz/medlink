import 'package:flutter/material.dart';
import 'package:medlink/widgets/buttons_navegation.dart';
import 'package:medlink/widgets/floating_button_exit.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: const Icon(Icons.menu, color: Colors.white),
            title: const Text('MEDLINK',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white))),
        body: const Padding(
            padding: EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                  child: Text('Informe os dados para pagamento:',
                      style: TextStyle(fontSize: 20, color: Colors.blue))),
              SizedBox(height: 20),
              PaymentCard(
                  icon: Icons.credit_card,
                  title: 'Cartão de crédito',
                  child: CardDetailsForm()),
              PaymentCard(
                  icon: Icons.pix, title: 'Pix', child: PixDetailsForm()),
              PaymentCard(
                  icon: Icons.receipt, title: 'Boleto', child: PixDetailsForm())
            ])),
        floatingActionButton: const FloatingButtonExit(),
        bottomNavigationBar: const BottomNavigationBarExample());
  }
}

class PaymentCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? child;

  const PaymentCard(
      {super.key, required this.icon, required this.title, this.child});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        collapsedBackgroundColor: Colors.blue.shade900,
        children: [if (child != null) child!]);
  }
}

class CardDetailsForm extends StatelessWidget {
  const CardDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(8.0)),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nome completo:', style: TextStyle(color: Colors.black)),
              TextField(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              SizedBox(height: 10),
              Text('Número do cartão:', style: TextStyle(color: Colors.black)),
              TextField(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              SizedBox(height: 10),
              Row(children: [
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Vencimento:',
                          style: TextStyle(color: Colors.black)),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'dd/mm/aa'))
                    ])),
                SizedBox(width: 10),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('CVV:', style: TextStyle(color: Colors.black)),
                      TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()))
                    ]))
              ])
            ]));
  }
}

class PixDetailsForm extends StatelessWidget {
  const PixDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(8.0)),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nome completo:', style: TextStyle(color: Colors.black)),
              TextField(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              SizedBox(height: 10),
              Text('CPF:', style: TextStyle(color: Colors.black)),
              TextField(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              SizedBox(height: 10)
            ]));
  }
}
