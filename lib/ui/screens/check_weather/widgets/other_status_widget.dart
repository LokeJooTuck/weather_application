import 'package:flutter/material.dart';

List<Widget> _buildStatusList(){
  return [
    _buildStatusIcon(icon: Icons.water_drop_outlined, status: 'HUMINITY', value: '56%'),
    _buildStatusIcon(icon: Icons.wind_power, status: 'WIND', value: '4.64km/h'),
    _buildStatusIcon(icon: Icons.thermostat, status: 'FEELS LIKE', value: '34'),

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
        ..._buildStatusList(),
      ],
    );
  }
}

Widget _buildStatusIcon({required IconData icon, required String status, required String value}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // 1. icon
      // 2. weather status
      // 3. value
      Icon(icon),
      Text(status),
      Text(value),

    ],
  );
}