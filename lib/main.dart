import 'package:flutter/material.dart';

import 'ui/screens/check_weather/check_weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Typography.whiteMountainView
      ),
      home: const CheckWeatherScreen(),
    );
  }
}
