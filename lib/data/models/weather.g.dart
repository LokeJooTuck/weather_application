// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherAdapter extends TypeAdapter<Weather> {
  @override
  final int typeId = 0;

  @override
  Weather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Weather(
      latitude: fields[0] as String,
      longitude: fields[1] as String,
      locationAreaName: fields[2] as String,
      lastUpdated: fields[3] as DateTime,
      backgroundImage: fields[4] as String,
      weatherForecast: (fields[5] as List).cast<WeatherForecast>(),
    );
  }

  @override
  void write(BinaryWriter writer, Weather obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude)
      ..writeByte(2)
      ..write(obj.locationAreaName)
      ..writeByte(3)
      ..write(obj.lastUpdated)
      ..writeByte(4)
      ..write(obj.backgroundImage)
      ..writeByte(5)
      ..write(obj.weatherForecast);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeatherForecastAdapter extends TypeAdapter<WeatherForecast> {
  @override
  final int typeId = 1;

  @override
  WeatherForecast read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherForecast(
      date: fields[0] as DateTime,
      weatherState: fields[1] as WeatherState,
      temperature: fields[2] as double,
      apparentTemperature: fields[3] as double,
      humidity: fields[4] as int,
      windSpeed: fields[5] as double,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherForecast obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.weatherState)
      ..writeByte(2)
      ..write(obj.temperature)
      ..writeByte(3)
      ..write(obj.apparentTemperature)
      ..writeByte(4)
      ..write(obj.humidity)
      ..writeByte(5)
      ..write(obj.windSpeed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherForecastAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
