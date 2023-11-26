import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../models/weather.dart';

class WeatherApiProvider {
  Future<Weather> fetchWeather(double latitude, double longitude) async {
    final response = await http.get(
      Uri.parse(
          'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&hourly=relative_humidity_2m&daily=weather_code,temperature_2m_max,apparent_temperature_max,wind_speed_10m_max&forecast_days=7'),
    );

    if (response.statusCode == 200) {
      final weather = Weather.fromJson(
          latitude: latitude.toString(),
          longitude: longitude.toString(),
          locationAreaName: 'Malaysia',
          weatherAPIResponseJsonObject: jsonDecode(response.body) as Map<String, dynamic>);

      return weather;
    } else {
      Fluttertoast.showToast(
          msg: "Weather fetch failed. Try again.",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      throw Exception('Weather fetch failed. Try again.');
    }
  }

  Future<List<Weather>> fetchSavedLocationsWeather(
      List<double> latitude, List<double> longitude, List<String> countryNames) async {
    var savedLocationsWeather = <Weather>[];

    if (latitude.isNotEmpty && longitude.isNotEmpty) {
      String latitudeList = latitude.join(',');
      String longitudeList = longitude.join(',');

      final response = await http.get(
        Uri.parse(
            'https://api.open-meteo.com/v1/forecast?latitude=$latitudeList&longitude=$longitudeList&hourly=relative_humidity_2m&daily=weather_code,temperature_2m_max,apparent_temperature_max,wind_speed_10m_max&forecast_days=7'),
      );

      final weatherJsonArray = jsonDecode(response.body) as List;

      if (response.statusCode == 200) {
        for (var i = 0; i < weatherJsonArray.length; i++) {
          savedLocationsWeather.add(
            Weather.fromJson(
                latitude: latitude[i].toString(),
                longitude: longitude[i].toString(),
                locationAreaName: countryNames[i],
                weatherAPIResponseJsonObject: weatherJsonArray[i] as Map<String, dynamic>),
          );
        }

        return savedLocationsWeather;
      } else {
        Fluttertoast.showToast(
            msg: "Weather fetch failed. Try again.",
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        throw Exception('Weather fetch failed. Try again.');
      }
    }
    return savedLocationsWeather;
  }
}
