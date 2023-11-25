import 'package:flutter/material.dart';

class OtherStatus extends StatefulWidget {
  const OtherStatus({super.key});

  @override
  State<OtherStatus> createState() => _OtherStatusState();
}

class _OtherStatusState extends State<OtherStatus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: _buildStatusIcon(context,
              icon: Icons.water_drop_outlined,
              status: 'HUMINITY',
              value: '56%'),
        ),
        Expanded(
          child: _buildStatusIcon(context,
              icon: Icons.wind_power_outlined,
              status: 'WIND',
              value: '4.64km/h'),
        ),
        Expanded(
          child: _buildStatusIcon(context,
              icon: Icons.thermostat_outlined,
              status: 'FEELS LIKE',
              value: '34'),
        ),
      ],
    );
  }
}

Widget _buildStatusIcon(BuildContext context,
    {required IconData icon, required String status, required String value}) {
  return LayoutBuilder(

    builder: (context, constraints) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: constraints.maxHeight * 0.5 ,
          ),
          Text(
            
            status,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white, fontSize: constraints.maxHeight * 0.18,),
          ),
          Text(value,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white, fontSize: constraints.maxHeight * 0.18,)),
        ],
      );
    }
  );
}