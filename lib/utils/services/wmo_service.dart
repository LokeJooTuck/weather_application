import '../../constants/enums/weather_state.dart';

class WMOService {
  static WeatherState interpretWMOCode(String wmoCode) {
    switch (wmoCode) {
      case '0':
        return WeatherState.clearSky;
      case '1':
      case '2':
      case '3':
        return WeatherState.partlyCloudy;
      case '45':
      case '48':
        return WeatherState.foggy;
      case '51':
      case '53':
      case '55':
        return WeatherState.drizzle;
      case '56':
      case '57':
        return WeatherState.freezingDrizzle;
      case '61':
      case '63':
      case '65':
        return WeatherState.rain;
      case '66':
      case '67':
        return WeatherState.freezingRain;
      case '71':
      case '73':
      case '75':
        return WeatherState.snowFall;
      case '77':
        return WeatherState.snowGrains;
      case '80':
      case '81':
      case '82':
        return WeatherState.rainShowers;
      case '85':
      case '86':
        return WeatherState.snowShowers;
      case '95':
      case '96':
      case '99':
        return WeatherState.thunderstorm;
      default:
        // Handle unknown codes, you might want to throw an exception or return a default state
        return WeatherState.unknown;
    }
  }
}

