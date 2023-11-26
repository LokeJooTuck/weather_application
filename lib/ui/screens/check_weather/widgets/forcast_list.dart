import 'package:flutter/material.dart';

import '../../../../data/models/weather.dart';
import 'forcast_card.dart';

WeatherForecast forcast = WeatherForecast(
    apparentTemperature: 10.0,
    humidity: 20,
    temperature: 20.0,
    date: DateTime.now(),
    weatherState: WeatherState.clearSky,
    windSpeed: 20.0);

List<WeatherForecast> forecastList = List.generate(10, (index) => forcast);

// Generate dummy data for Weather class
Weather dummyWeather = Weather(
    longitude: '-74.006',
    latitude: '40.7128',
    locationAreaName: 'Kuala Lumpur',
    lastUpdated: DateTime.now(),
    backgroundImage: 'assets/images/backgrounds/night.jpg',
    weatherForecast: forecastList);

class ForcastList extends StatelessWidget {
  const ForcastList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 500,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0XFF535353),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: forecastList.length,
          itemBuilder: (context, index) {
            return ForcastCard(weather: dummyWeather);
          },
        ));
  }
}
