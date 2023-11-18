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
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('$formattedDate', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),),
          Container( width: 50, height: 50,child: Image.asset('assets/images/weather_icons/HeavyRain.png', fit: BoxFit.cover, height: double.infinity, width: double.infinity,)),
          Text('22 °C', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),),  
          Text('1-5', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),),
          Text('km/h',)
      
        ],
      ),
    );
  }
}

