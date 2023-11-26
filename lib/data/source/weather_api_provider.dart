import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../models/weather.dart';

class WeatherApiProvider {
  Future<Weather> fetchWeather(double latitude, double longitude) async {
    bool hasConnection = await InternetConnectionCheckerPlus().hasConnection;
    if(!hasConnection){
      Fluttertoast.showToast(
          msg: "No internet connection. Try again.",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      throw Exception('No internet connection. Try again.');
    }

    // String? backgroundImageURL;

    // try{
    //   final backgroundImageResponse = await http.get(
    //   Uri.parse('https://source.unsplash.com/featured/?${state.weather!.locationAreaName}'),
    // );
    // }catch(e){
    //   backgroundImageURL = null;
    // }
    



    final response = await http.get(
      Uri.parse(
          'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&hourly=relative_humidity_2m&daily=weather_code,temperature_2m_max,apparent_temperature_max,wind_speed_10m_max&forecast_days=7'),
    );
    //get location name from lat and long
    List<Placemark> placemarks= await placemarkFromCoordinates(latitude,longitude);
        String locationName  = placemarks[0].locality??'';


    if (response.statusCode == 200) {
      final weather = Weather.fromJson(
          latitude: latitude,
          longitude: longitude,
          // backgroundImage:  backgroundImageURL?? '',
          locationAreaName: locationName,
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
}
