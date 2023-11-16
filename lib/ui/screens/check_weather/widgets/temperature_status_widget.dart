import 'package:flutter/material.dart';

class TemperatureStatus extends StatelessWidget {
  const TemperatureStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          child: Placeholder(),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
        width: 80,
         child: Stack(
             alignment: Alignment.center,
             children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '25',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Text(
              '°C',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ),
             ],
           ),
       )
      ],
    );
  }
}