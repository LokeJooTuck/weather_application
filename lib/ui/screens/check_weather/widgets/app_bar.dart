import 'package:flutter/material.dart';

import '../../../../page_navigation.dart';
import '../../add_location/add_new_location_screen.dart';

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
        onPressed: () {
          navigateToPage(context, SavedLocationsPage());
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    ],
  );
}
