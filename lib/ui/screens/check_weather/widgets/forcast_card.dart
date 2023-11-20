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
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: LayoutBuilder(
            builder: (context, constraints) {
              return Text(formattedDate, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white, fontSize: constraints.maxHeight),);
            }
          )),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) {

                return AspectRatio(aspectRatio: 16/9, child: Image.asset('assets/images/weather_icons/HeavyRain.png', fit: BoxFit.fill, height: constraints.maxHeight, width: constraints.maxWidth * 0.5,));
              }
            ),
          ),
          Expanded(child: LayoutBuilder(
            builder: (context, constraints) {
              return Text('22 °C', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white, fontSize: constraints.maxHeight),);
            }
          )),  
          Expanded(child: LayoutBuilder(
            builder: (context, constraints) {
              return Text('1-5', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white, fontSize: constraints.maxHeight),);
            }
          )),
          Expanded(child: LayoutBuilder(
            builder: (context,constraints) {
              return Text('km/h', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white, fontSize: constraints.maxHeight),);
            }
          ))
      
        ],
      ),
    );
  }
}

