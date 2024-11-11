import 'package:flutter/material.dart';

class ConsultationSection extends StatefulWidget {
  const ConsultationSection({super.key});

  @override
  _ConsultationSectionState createState() => _ConsultationSectionState();
}

class _ConsultationSectionState extends State<ConsultationSection> {
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildConsultationTile('Gastroenterologia', 'Dr. João Silva', '2024-09-21', _isExpanded1, (value) {
          setState(() {
            _isExpanded1 = value;
          });
        }),
        _buildConsultationTile('Cardiologia', 'Dr. Maria Oliveira', '2024-09-22', _isExpanded2, (value) {
          setState(() {
            _isExpanded2 = value;
          });
        }),
      ],
    );
  }

  Widget _buildConsultationTile(String specialty, String doctor, String date, bool isExpanded, ValueChanged<bool> onExpand) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                specialty,
                style: const TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.add, color: Colors.white),
                    onPressed: () => onExpand(true),
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove, color: Colors.white),
                    onPressed: () => onExpand(false),
                  ),
                ],
              ),
            ],
          ),
          if (isExpanded) _buildExpandedInfo(doctor, date),
        ],
      ),
    );
  }

  Widget _buildExpandedInfo(String doctor, String date) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(doctor, style: const TextStyle(color: Colors.black, fontSize: 18.0)),
          Text('Data: $date', style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                print('Entrando na consulta...');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                backgroundColor: Colors.green,
              ),
              child: const Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }
}
