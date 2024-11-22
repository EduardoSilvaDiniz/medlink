import 'package:flutter/material.dart';
import 'package:medlink/screens/continued_register.dart';
import 'package:medlink/screens/login.dart';
import 'package:medlink/screens/man_page.dart';
import 'package:medlink/screens/my_consult.dart';
import 'package:medlink/screens/payment_screen.dart';
import 'package:medlink/screens/register.dart';
import 'package:medlink/screens/scheduling.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medlink',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
            useMaterial3: true),
        initialRoute: '/login',
        routes: {
          '/home': (context) => const ManPage(),
          '/pay': (context) => const PaymentScreen(),
          '/scheduling': (context) => Scheduling(),
          '/consult': (context) => const MyConsult(),
          '/login': (context) => const LoginPage(),
          '/register': (context) => const Register(),
          '/continued-register': (context) => const ContinuedRegister(),
        });
  }
}
