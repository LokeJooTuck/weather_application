import 'package:hive/hive.dart';
import 'package:weather_application/data/services/database_service.dart';

import '../models/weather.dart';

// This is a hive database provider that will provide the database instance to the repository
class DatabaseProvider extends DatabaseServive {
  static const String databaseName = "WeatherBox"; // name of the database
  static const String weatherBoxName = "weather";  // name of the box

  // Singleton instance of the DatabaseProvider
  static final DatabaseProvider instance = DatabaseProvider._internal();

  // Private constructor for the singleton pattern
  DatabaseProvider._internal();

  // Instance of the weather box collection
  late Box _weatherBox;

  void init() async {
    // Initialize WeatherBox
    await BoxCollection.open(
    databaseName, // Name of your database
    {weatherBoxName}, // Names of your boxes
  );
    

    // Register the WeatherAdapter adapter for the Weather class
    Hive.registerAdapter(WeatherAdapter());

    // Open the weather box collection
    _weatherBox = await Hive.openBox(weatherBoxName);
  }
  // Getter for the weatherBox property
  Future<Box> get weatherBox async {
    // If the weather box collection is not created, create and return it

    if (!Hive.isBoxOpen(weatherBoxName)) {
      _weatherBox = Hive.box(weatherBoxName);
    }

    return _weatherBox;
  }

//   void saveWeatherList(List<Weather> weatherList) {
//   // Get the weatherBox
//   var box = instance.weatherBox;

//   // Clear the existing data in the box
//   box.clear();

//   // Save the list of Weather objects to the box
//   for (var weather in weatherList) {
//     box.add(weather);
//   }
// }

  


}
