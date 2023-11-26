// a bloc check weather event file


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geocoding/geocoding.dart';
import 'package:weather_application/ui/screens/check_weather/widgets/forecast_list.dart';
import 'package:weather_application/utils/services/location_service.dart';

import '../../../../data/models/weather.dart';
import '../../../../data/repository/weather_repository.dart';


part 'check_weather_event.dart';
part 'check_weather_state.dart';

class CheckWeatherBloc extends Bloc<CheckWeatherEvent, CheckWeatherState> {
  final WeatherRepository weatherRepository;
  
  CheckWeatherBloc({required this.weatherRepository}) : super(const CheckWeatherState()){

    on<GetWeather>(_mapGetWeatherToState);
  }

  void _mapGetWeatherToState(GetWeather event, Emitter<CheckWeatherState> emit) async {
    emit(state.copyWith(status: CheckWeatherStatus.loading));
    try {
      // check favourite location
      // if favourite location is null, get current location
      // if favourite location is not null, get weather from prefer location

      String? favouriteLocation = await weatherRepository.getFavouriteLocation();
      Weather? oldFavouriteWeather;
      Weather? newWeather;
      
      if(favouriteLocation != null){
        oldFavouriteWeather = await weatherRepository.getWeather(locationName: favouriteLocation);
     
        if(oldFavouriteWeather != null){
        newWeather = await weatherRepository.fetchWeather(latitude: oldFavouriteWeather.latitude, longitude: oldFavouriteWeather.longitude);
        weatherRepository.saveOrUpdateWeather(newWeather);
        return emit(state.copyWith(status: CheckWeatherStatus.loaded, weather: newWeather));
        }else{
          return emit(state.copyWith(status: CheckWeatherStatus.error, errorMessage: 'No saved location nor current location found'));
        }

      }else if(await LocationService.handleLocationPermission() == true){
        Map<String, double> currentPosition = await LocationService.getCurrentPosition();
        newWeather = await weatherRepository.fetchWeather(latitude: currentPosition['latitude']!, longitude: currentPosition['longitude']!);
        weatherRepository.savePreferLocation(newWeather.locationAreaName);
        weatherRepository.saveOrUpdateWeather(newWeather);
        return emit(state.copyWith(status: CheckWeatherStatus.loaded, weather: newWeather));
      }else{
        return emit(state.copyWith(status: CheckWeatherStatus.error, errorMessage: 'No saved location nor current location found'));
      }

    } catch (e) {
      emit(state.copyWith(status: CheckWeatherStatus.error, errorMessage: e.toString()));
    }

  }


}
