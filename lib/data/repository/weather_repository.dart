import 'package:weather_application/data/services/hive_database_service.dart';
import 'package:weather_application/data/source/database_provider.dart';

import '../models/weather.dart';
import '../source/weather_api_provider.dart';

class WeatherRepository {
  final weatherApiProvider = WeatherApiProvider();
  final hiveDatabaseService = HiveDatabaseService(databaseProvider: DatabaseProvider());

  Future<Weather> fetchWeather({required double latitude, required double longitude}) async {
    return weatherApiProvider.fetchWeather(latitude, longitude);
  }

  //// Hive Databases ////
  //// Weather Box ////

  Future<Weather?> getWeather({String? locationName}) async {
    return await hiveDatabaseService.getWeather(locationName: locationName);
  }

  Future<List<Weather>?> getWeatherList() async {
    return await hiveDatabaseService.getWeatherList();
  }

  //// Favourite Box ////
  Future<String?> getFavouriteLocation() async {
    return await hiveDatabaseService.getFavouriteLocation();
  }

  Future<List<Weather>?> fetchSavedLocationsWeather() async {
    final savedLocationWeatherList = await getWeatherList();

    if (savedLocationWeatherList == null || savedLocationWeatherList!.isEmpty) {
      return savedLocationWeatherList;
    }

    final List<double> latitudeList = [];
    final List<double> longitudeList = [];
    final List<String> countryNameList = [];

    for (var i = 0; i < savedLocationWeatherList.length; i++) {
      latitudeList.add(savedLocationWeatherList[i].latitude);
      longitudeList.add(savedLocationWeatherList[i].longitude);
      countryNameList.add(savedLocationWeatherList[i].locationAreaName);
    }

    return weatherApiProvider.fetchSavedLocationsWeather(
        latitude: latitudeList, longitude: longitudeList, countryNames: countryNameList);
  }
}
