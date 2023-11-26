import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_application/data/models/weather.dart';
import 'package:weather_application/data/services/hive_database_service.dart';
import 'package:weather_application/data/source/database_provider.dart';
import 'package:weather_application/ui/screens/check_weather/widgets/forcast_list.dart';

import '../../../../data/services/database_service.dart';
import '../../../../page_navigation.dart';
import '../../add_location/add_new_location_screen.dart';

AppBar header(BuildContext context) {
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
        onPressed: () async {
          navigateToPage(context, const SavedLocationsPage());
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    ],
  );
}
