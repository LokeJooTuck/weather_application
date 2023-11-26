part of 'saved_locations_bloc.dart';

@immutable
abstract class SavedLocationsState extends Equatable {
  const SavedLocationsState();
}

class SavedLocationsInitial extends SavedLocationsState {
  @override
  List<Object?> get props => [];
}

class SavedLocationsLoaded extends SavedLocationsState {
  const SavedLocationsLoaded({
    required this.savedLocationsWeather,
  });

  final List<Weather> savedLocationsWeather;

  @override
  List<Object?> get props => [
        savedLocationsWeather,
      ];

  @override
  String toString() => 'SavedLocationsLoaded';
}

class SavedLocationsError extends SavedLocationsState {
  const SavedLocationsError({required this.error});

  final String error;

  @override
  List<Object?> get props => [error];

  @override
  String toString() => 'SavedLocationsError';
}
