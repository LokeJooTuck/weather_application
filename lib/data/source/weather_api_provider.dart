import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather.dart';

class WeatherApiProvider {
  Future<Weather> fetchWeather(double latitude, double longitude) async {
    latitude = 2.5;
    longitude = 112.5;
    final response = await http.get(
      Uri.parse(
          'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&hourly=relative_humidity_2m&daily=weather_code,temperature_2m_max,apparent_temperature_max,wind_speed_10m_max&forecast_days=4'),
    );

    if (response.statusCode == 200) {
      return Weather.fromJson(
          latitude: latitude.toString(),
          longitude: longitude.toString(),
          locationAreaName: 'Malaysia',
          weatherAPIResponseJsonObject: jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Weather fetch failed. Try again.');
    }
  }
}
