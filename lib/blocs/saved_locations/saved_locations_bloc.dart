import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:weather_application/data/repository/weather_repository.dart';

import '../../data/models/weather.dart';

part 'saved_locations_event.dart';
part 'saved_locations_state.dart';

class SavedLocationsBloc extends Bloc<SavedLocationsEvent, SavedLocationsState> {
  final WeatherRepository repository;

  SavedLocationsBloc({required this.repository}) : super(SavedLocationsInitial()) {
    on<SavedLocationsEvent>((event, emit) async {
      if (event is SavedLocationsFetched) {
        final apiResponse = await repository.fetchWeather(latitude: 2, longitude: 2);

        // if (apiResponse.) {
        //   final violations = apiResponse.data['violations'] != null
        //       ? (apiResponse.data['violations'] as List).map((i) => ViolationSummary.fromJson(i)).toList()
        //       : null;
        //
        //   emit(
        //     SavedLocationsLoaded(savedLocationsWeather: []
        //
        //     ),
        //   );
        // } else {
        //   emit(
        //     const SavedLocationsError(
        //       error: 'Oops! Something went wrong!',
        //     ),
        //   );
        // }
      }
    });
  }
}
