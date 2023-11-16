class Weather{
  final String longitude;
  final String latitude;
  final String locationAreaName;
  final double temperature;
  final double humidity;
  final String weatherState;
  final double windSpeed;
  final DateTime lastUpdated;

  const Weather({
    required this.longitude,
    required this.latitude,
    required this.locationAreaName,
    required this.temperature,
    required this.humidity,
    required this.weatherState,
    required this.windSpeed,
    required this.lastUpdated,
  });
}

