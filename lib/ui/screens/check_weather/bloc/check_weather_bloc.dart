// a bloc check weather event file

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_application/ui/screens/check_weather/widgets/forecast_list.dart';

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

      String? preferLocation = await weatherRepository.fetchFavouriteLocation();
      Weather? oldFavouriteWeather;
      Weather? newWeather;
      
      // if(preferLocation != null){
      //   oldFavouriteWeather = await weatherRepository.getWeather(locationName: preferLocation);
     
      //   if(oldFavouriteWeather != null){
      //   newWeather = await weatherRepository.fetchWeather(latitude: oldFavouriteWeather.latitude, longitude: oldFavouriteWeather.longitude);
      //   return emit(state.copyWith(status: CheckWeatherStatus.loaded, weather: newWeather));
      // }
     
      // }

      

      

     
    

      emit(state.copyWith(status: CheckWeatherStatus.loaded, weather: newWeather));
      emit(state.copyWith(status: CheckWeatherStatus.loading, weather: newWeather));
    } catch (e) {
      emit(state.copyWith(status: CheckWeatherStatus.error, errorMessage: e.toString()));
    }

  }


}
