import 'package:flutter/material.dart';

class NovaConsultationSection extends StatefulWidget {
  @override
  _NovaConsultationSectionState createState() => _NovaConsultationSectionState();
}

class _NovaConsultationSectionState extends State<NovaConsultationSection> {
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildConsultationTile('Gastroenterologia', 'Dr. João Silva', '2024-09-21 14:30', _isExpanded1, (value) {
          setState(() {
            _isExpanded1 = value;
          });
        }, Colors.grey[300] ?? Colors.grey),
        _buildConsultationTile('Cardiologia', 'Dr. Maria Oliveira', '2024-09-22 15:00', _isExpanded2, (value) {
          setState(() {
            _isExpanded2 = value;
          });
        }, Colors.grey[300] ?? Colors.grey),
      ],
    );
  }

  Widget _buildConsultationTile(String specialty, String doctor, String dateTime, bool isExpanded, ValueChanged<bool> onExpand, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                specialty,
                style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.black),
                    onPressed: () => onExpand(true),
                  ),
                  IconButton(
                    icon: Icon(Icons.remove, color: Colors.black),
                    onPressed: () => onExpand(false),
                  ),
                ],
              ),
            ],
          ),
          if (isExpanded) _buildExpandedInfo(doctor, dateTime),
        ],
      ),
    );
  }

  Widget _buildExpandedInfo(String doctor, String dateTime) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(doctor, style: TextStyle(color: Colors.black, fontSize: 18.0)),
          Text('Data: $dateTime', style: TextStyle(color: Colors.black)),
          SizedBox(height: 16.0),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton.icon(
              onPressed: () {
                print('Gerando relatório...');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                backgroundColor: Colors.grey, // Fundo cinza
              ),
              icon: Icon(Icons.insert_drive_file, color: Colors.black),
              label: Text('Relatório', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
