import 'package:http/http.dart' as http;

class WeatherApiProvider {
  Future<http.Response> fetchWeather(double latitude, double longitude) {
    latitude = 2.5;
    longitude = 112.5;
    return http.get(Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&hourly=relative_humidity_2m&daily=weather_code,temperature_2m_max,apparent_temperature_max,wind_speed_10m_max&forecast_days=4'));
  }
}
