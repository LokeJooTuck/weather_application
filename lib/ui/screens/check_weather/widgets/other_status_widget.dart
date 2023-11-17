import 'package:flutter/material.dart';

List<Widget> _buildStatusList(BuildContext context){
  return [
    _buildStatusIcon(context, icon: Icons.water_drop_outlined, status: 'HUMINITY', value: '56%'),
    _buildStatusIcon(context, icon: Icons.wind_power_outlined, status: 'WIND', value: '4.64km/h'),
    _buildStatusIcon(context, icon: Icons.thermostat_outlined, status: 'FEELS LIKE', value: '34'),

  ];
}

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
      children: [
        ..._buildStatusList(context),
      ],
    );
  }
}

Widget _buildStatusIcon(BuildContext context,{required IconData icon, required String status, required String value}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.min,
    children: [
      // 1. icon
      // 2. weather status
      // 3. value
      Icon(icon, size: 45,color: Colors.white),
      SizedBox(height: 3,),
      Text(status, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),),
      SizedBox(height: 3,),
      Text(value, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white)),

    ],
  );
}
