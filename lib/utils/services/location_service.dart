import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  static Future<bool> handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled) return false;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) return false;
    if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) return false;
      }
  //else return true    
  return true;
    
  }

  static Future<Map<String, double>> getCurrentPosition() async {
    final hasPermission = await handleLocationPermission();
    if (!hasPermission) throw Exception('Location permission is not granted');
    Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return {
      'latitude': currentPosition.latitude,
      'longitude': currentPosition.longitude
    };
  }
}
