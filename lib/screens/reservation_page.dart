import 'package:flutter/material.dart';
import 'package:medlink/data/reserve.dart';
import 'package:medlink/screens/last_reservation.dart';
import 'package:medlink/screens/my_consult.dart';
import 'package:medlink/widgets/app_bar_build.dart';


class ReservationPage extends StatefulWidget {
  final String _especialidade;
  final List<String> _doctores = [
    'Dr. Andrés Herrera',
    'Dr. Beatriz Morales',
    'Dr. Carlos Mendoza',
    'Dr. Daniela Pérez',
    'Dr. Enrique López',
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
  ReservationPage(this._especialidade,{super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  bool _escolheuDoutor = false;
  var _currentDate = DateTime.now();
  String doctorActual = "";

  Future <void> getDataPickerWidget() async {
      //First We selection the date
      
      DateTime? date = await showDatePicker(
      context: context,
      initialDate: _currentDate,
      firstDate: DateTime(2024),
      lastDate: DateTime(2100),
      );

      if(date == null) return;

      //If we have a date we pick up the hour
      TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      );
      
      if(time == null) return;
      
        //If we have date and hour we modifify the string
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
            Text(widget._especialidade,style: TextStyle(fontSize: 50,color: Colors.blue) ),
            escolheDoctor(),     
            escolherDataeHora(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  _bataocancelar(context);
                }, child: const Text("Cancelar")),
                //Tengo que hacer que muestre dos tipod de botones, si no escogio el doctor o lo escogio
                ElevatedButton(onPressed: (){
                  (_escolheuDoutor)?botaoEstaTodoPronto(context):botaoAindaFalta(context); 
                }, child: const Text("Continuar"))
              ],
            )
          ],
        )
      ),
    );
  }


  void botaoAindaFalta(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context)=>AlertDialog(
        title: const Text("ERRO"),
        content: const Text("Tem que escolher o Doutor"),
        actions: [
          TextButton(
            onPressed: ()=>Navigator.pop(context), 
            child: const Text("Ok"))
        ],
      ));
  }

  void botaoEstaTodoPronto(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false, 
      builder: (context)=>AlertDialog(
        title: const Text("Seguro"),
        content: Text("Voce vai reservar a cita com o $doctorActual as ${_currentDate.toString()}"),
        actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, 
        child: const Text("NO")),
        TextButton(
          onPressed: (){
            // Agregar la reserva a la lista
            addListReserve(
              Reserve(doctorActual, widget._especialidade, _currentDate.toString())
            );
            Navigator.pop(context); // Cierra el diálogo

            // Navegar a la página de la última reserva
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (context) => const LastReservationPage())
            );
          },
          //Navigator.popUntil(context, (route) => route.isFirst);
          child: const Text("SI"))
      ],
      ));
  }

  

  void _bataocancelar(BuildContext context){
    showDialog(
    context: context,
    barrierDismissible: false, 
    builder: (context)=>AlertDialog(
      scrollable: false,
      title: const Text("CANCELAR"),
      content: const Text("Seguro que quer Cancelar a reservacao"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, 
        child: const Text("NO")),
        TextButton(onPressed: (){
          Navigator.popUntil(context, (route) {
            // Regresar hasta la pantalla Home
            return route.settings.name == '/home'; // Asegura que retroceda hasta Home
          });
          //Navigator.popUntil(context, (route) => route.isFirst);
        }, child: const Text("SI"))
      ],
    ));
  }


  Widget escolherDataeHora(){
    return Container(
      padding: const EdgeInsets.all(30.0),
      height: 250,
      width: 300,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(206, 206, 206, 1),
        borderRadius: BorderRadius.all(Radius.circular(25))
      ),
      child: Column(
            children: [
              const Text("Selecione a Data e Hora",textAlign: TextAlign.start,style: TextStyle(fontSize: 20,color: Colors.blue),),
              SizedBox(

                child: IconButton(
                  onPressed: (){
                    getDataPickerWidget();
                  },
                  icon: const Icon(Icons.calendar_month_outlined),
                  iconSize: 50,),
              ),
                
              Text(_currentDate.toString())             
            ],
          ),
    );
  }


  Widget escolheDoctor() {
    return Container(
      padding: const EdgeInsets.all(30.0),
      height: 250,
      width: 300,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(206, 206, 206, 1),
        borderRadius: BorderRadius.all(Radius.circular(25))
      ),
      child: Column(
            children: [
              const Text("Selecione um Doctor",textAlign: TextAlign.start,style: TextStyle(fontSize: 20,color: Colors.blue),),
              IconButton(
                icon:const Icon(Icons.medical_services_sharp),
                onPressed: (){},
                iconSize: 50,),
              //Vou fazer para que as pessoas escolham o doctor que querem ser atendidos
              DropdownButton(
                hint: const Text("Escolhe um doctor"),
                onChanged: (String ? novoValor){
                  setState(() {
                    doctorActual = novoValor.toString();
                    _escolheuDoutor = true;
                  }
                  );
                } ,
                items: widget._doctores.map<DropdownMenuItem<String>>((String doctor) {
                    return DropdownMenuItem<String>(
                      value: doctor,
                      child: Text(doctor),
                    );
                  }).toList(),
              ),
              Text((doctorActual=="")?"Escolhe um doctor":doctorActual)
            ],
          ),
    );
  }  
      


}






/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuild(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(doctor),
          ),
          Center(
            child: Text(fecha),
          ),
          Center(
            child: Text(widget._especialidade),
          ),
          ElevatedButton(
            onPressed: (){
              addListReserve(
                Reserve(doctor, widget._especialidade, fecha)
              );
            }, 
            child: Text("Crear un nuevo registro"))
        ],
      ),
    );
  }

  */