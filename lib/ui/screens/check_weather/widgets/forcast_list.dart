import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../data/models/weather.dart';
import 'forcast_card.dart';

// Generate dummy data for Weather class
Weather dummyWeather = Weather(
  longitude: '-74.006',
  latitude: '40.7128',
  locationAreaName: 'New York City',
  temperature: 25.5,
  humidity: 65.0,
  weatherState: 'Sunny',
  windSpeed: 10.0,
  lastUpdated: DateTime.now(),
);

List<Weather> forecastList = List.generate(4, (index) {
  return Weather(
    longitude: dummyWeather.longitude,
    latitude: dummyWeather.latitude,
    locationAreaName: dummyWeather.locationAreaName,
    temperature: dummyWeather.temperature + Random().nextDouble() * 5 - 2.5,
    humidity: dummyWeather.humidity + Random().nextDouble() * 10 - 5,
    weatherState: index % 2 == 0 ? 'Sunny' : 'Cloudy',
    windSpeed: dummyWeather.windSpeed + Random().nextDouble() * 2 - 1,
    lastUpdated: dummyWeather.lastUpdated.add(Duration(days: index + 1)),
  );
});

class ForcastList extends StatelessWidget {
  const ForcastList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: 500,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0XFF535353),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: ListView.builder(
    
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return ForcastCard(weather: forecastList[index]);
      },
      )
    );
  }
}
