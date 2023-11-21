import 'package:flutter/material.dart';

import '../../../../data/models/weather.dart';

AppBar header() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Row(
      children: [
        Icon(
          Icons.pin_drop_outlined,
          color: Colors.white,
        ),
        SizedBox(width: 8), // Add some spacing between the icon and text
        Text(
          'Paris',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {
          final weather = Weather.fromJson(latitude: 'adf', locationAreaName: "asdf", longitude: '12396', backgroundImage: '', weatherAPIResponseJsonObject:  jsonResponse);
          print(weather);

        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    ],
  );
}
