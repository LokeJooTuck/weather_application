import 'package:flutter/material.dart';

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
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    ],
  );
}
