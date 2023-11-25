import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ForecastCard
 extends StatelessWidget {
  final DateTime date;
  final String icon;
  final String temperature;
  final String windSpeed;

  const ForecastCard 
  ({super.key, required this.date, required this.icon, required this.temperature, required this.windSpeed});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        // 1. day/ date
        // 2. weather status
        // 3. temperature
        // Text(DateFormat('EEE dd').format(DateTime.now())),
        // const Icon(Icons.wb_sunny),
        // const Text('22'),
        // const Text('1.5'),
        // const Text('km/h')
        Text(DateFormat('EEE dd').format(date)),
        Image.asset(icon),
        Text(temperature),
        Text(windSpeed),
        const Text('km/h')
      ],
    );
  }
}