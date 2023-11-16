import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_application/data/models/weather.dart';

class ForcastCard extends StatefulWidget {
  const ForcastCard({super.key, required this.weather});
  final Weather weather;

  @override
  State<ForcastCard> createState() => _ForcastCardState();
}

class _ForcastCardState extends State<ForcastCard> {
  String formattedDate = DateFormat('EEE d').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 100,
      child: Column(
        children: [
          Text('$formattedDate', style: TextStyle(color: Colors.black),),
          Container( width: 50, height: 50,child: Placeholder()),
          Text(widget.weather.temperature.toString(), style: TextStyle(color: Colors.black),),
          Text(widget.weather.windSpeed.toString(), style: TextStyle(color: Colors.black),),
          Text('km/h', style: TextStyle(color: Colors.black),)
      
        ],
      ),
    );
  }
}

