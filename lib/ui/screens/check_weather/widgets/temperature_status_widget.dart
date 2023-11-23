import 'package:flutter/material.dart';

class TemperatureStatus extends StatelessWidget {
  const TemperatureStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      
      children: [
        Container(
          width: 50,
          height: 50,
          child: Placeholder(),
        ),
        const SizedBox(
          height: 10,
        ),
        Flexible(
                 child: Text(
                   'Clear',
                   style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white,fontWeight: FontWeight.bold, ),
                 ),
               ),
         Expanded(
           child: Container(
             child: Padding(
               padding: const EdgeInsets.only( left :30.0),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                 children: [
                   Text(
                     '25',
                     style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.white,fontWeight: FontWeight.w400, fontSize: 86),
                   ),
                   Align(
                     alignment: Alignment.topRight,
                     child: Text(
                               '°C',
                               style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                             ),
                   ),
                 ],
               ),
             ),
           ),
         )
      ],
    );
  }
}