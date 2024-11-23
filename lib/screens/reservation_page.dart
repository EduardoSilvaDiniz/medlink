import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medlink/data/reserve.dart';
import 'package:medlink/screens/last_reservation.dart';
import 'package:medlink/screens/my_consult.dart';
import 'package:medlink/widgets/app_bar_build.dart';

class ReservationPage extends StatefulWidget {
  ReservationPage(this._specialty, {super.key});

  final String _specialty;
  final List<String> _doctores = [
    'Dr. Andrés Herrera',
    'Dr. Beatriz Morales',
    'Dr. Carlos Mendoza',
    'Dr. Daniela Pérez',
    'Dr. Henrique López',
    'Dr. Fernanda Gutiérrez',
    'Dr. Gabriel Vargas',
    'Dr. Helena Torres',
    'Dr. Ignacio Castillo',
    'Dr. Juliana Soto',
    'Dr. Kevin Romero',
    'Dr. Laura Rivas',
    'Dr. Marcos Silva',
    'Dr. Natalia Acosta',
    'Dr. Omar Villanueva',
    'Dr. Patricia Ruiz',
    'Dr. Roberto Figueroa',
    'Dr. Sofía Delgado',
    'Dr. Tomás Aguirre',
    'Dr. Valeria Peña',
  ];

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  bool _choiseDoctor = false;
  DateTime _currentDate = DateTime.now();
  String doctorActual = "";
  DateFormat formatador = DateFormat('dd/MM/yyyy HH:mm:ss');

  Future<void> getDataPickerWidget() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: _currentDate,
      firstDate: DateTime(2024),
      lastDate: DateTime(2100),
    );

    if (date == null) return;

    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time == null) return;

    setState(() {
      _currentDate = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarBuild(),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Text(widget._specialty,
                  style: const TextStyle(fontSize: 24, color: Colors.blue)),
              chooseDoctor(),
              chooseDateAndTime(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ElevatedButton(
                    onPressed: () =>
                      _buttonCancel(context),
                    child: const Text("Cancelar")),
                ElevatedButton(
                    onPressed: () {
                      (_choiseDoctor)
                          ? filledData(context)
                          : missingData(context);
                    },
                    child: const Text("Continuar"))
              ])
            ])));
  }

  void missingData(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
                title: const Text("Alerta"),
                content: const Text("Por favor, selecione um medico"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("ok"))
                ]));
  }

  void filledData(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                title: const Text("Agendamento"),
                content: Text(
                    "Reservar uma consulta com $doctorActual as ${_currentDate.toString()}"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("não")),
                  TextButton(
                      onPressed: () {
                        addListReserve(Reserve(doctorActual, widget._specialty,
                            _currentDate.toString()));
                        Navigator.pop(context);

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LastReservationPage()));
                      },
                      child: const Text("sim"))
                ]));
  }

  void _buttonCancel(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
                scrollable: false,
                title: const Text("Cancelar Agendamento"),
                content: const Text("Deseja não continuar seu agendamento ?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("não")),
                  TextButton(
                      onPressed: () {
                        Navigator.popUntil(context, (route) {
                          return route.settings.name == '/home';
                        });
                      },
                      child: const Text("sim"))
                ]));
  }

  Widget chooseDateAndTime() {
    return Container(
        padding: const EdgeInsets.all(30.0),
        height: 250,
        width: 300,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(206, 206, 206, 1),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Column(children: [
          const Text("Selecione a Data e Hora",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, color: Colors.blue)),
          SizedBox(
              child: IconButton(
                  onPressed: () {
                    getDataPickerWidget();
                  },
                  icon: const Icon(Icons.calendar_month_outlined),
                  iconSize: 50)),
          Text(formatador.format(_currentDate))
        ]));
  }

  Widget chooseDoctor() {
    return Container(
        padding: const EdgeInsets.all(30.0),
        height: 250,
        width: 300,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(206, 206, 206, 1),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Column(children: [
          const Text("Selecione um Doctor",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, color: Colors.blue)),
          IconButton(
              icon: const Icon(Icons.medical_services_sharp),
              onPressed: () {},
              iconSize: 50),
          DropdownButton(
              hint: const Text("Escolhe um doctor"),
              onChanged: (String? novoValor) {
                setState(() {
                  doctorActual = novoValor.toString();
                  _choiseDoctor = true;
                });
              },
              items: widget._doctores
                  .map<DropdownMenuItem<String>>((String doctor) {
                return DropdownMenuItem<String>(
                    value: doctor, child: Text(doctor));
              }).toList()),
          Text((doctorActual == "") ? "Escolhe um doctor" : doctorActual)
        ]));
  }
}
