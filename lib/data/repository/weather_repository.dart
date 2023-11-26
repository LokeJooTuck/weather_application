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

  Future<void> saveOrUpdateWeather (Weather weather) async {
    await hiveDatabaseService.saveOrUpdateWeather(weather);
  }

  //// Favourite Box //// 
  Future<String?> getFavouriteLocation() async {

    return await hiveDatabaseService.getFavouriteLocation();
  }

  Future<void> savePreferLocation(String locationName) async {
    await hiveDatabaseService.savePreferLocation(locationName);
  }

 
}
