part of 'saved_locations_bloc.dart';

abstract class SavedLocationsEvent {}

class SavedLocationsFetched extends SavedLocationsEvent {}

class SAddNewLocation extends SavedLocationsEvent {}
