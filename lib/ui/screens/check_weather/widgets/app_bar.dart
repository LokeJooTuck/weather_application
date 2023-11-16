import 'package:flutter/material.dart';

AppBar header() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
      )
    ],
  );
}