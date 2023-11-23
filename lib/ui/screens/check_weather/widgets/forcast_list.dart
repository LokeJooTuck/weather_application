import 'package:flutter/material.dart';
import 'package:weather_application/ui/screens/check_weather/widgets/forcast_card.dart';

class ForecastList extends StatefulWidget {
  const ForecastList({super.key});

  @override
  State<ForecastList> createState() => _ForecastListState();
}


class _ForecastListState extends State<ForecastList> {
  final List<Forecast> forecastList = [] ;
  
  @override
  void initState() {
    super.initState();
    forecastList.add(Forecast(date: DateTime.now(), icon: 'assets/images/sunny.png', temperature: '22', windSpeed: '1.5'));
    forecastList.add(Forecast(date: DateTime.now(), icon: 'assets/images/sunny.png', temperature: '22', windSpeed: '1.5'));
    forecastList.add(Forecast(date: DateTime.now(), icon: 'assets/images/sunny.png', temperature: '22', windSpeed: '1.5'));
    forecastList.add(Forecast(date: DateTime.now(), icon: 'assets/images/sunny.png', temperature: '22', windSpeed: '1.5'));
    forecastList.add(Forecast(date: DateTime.now(), icon: 'assets/images/sunny.png', temperature: '22', windSpeed: '1.5'));
    forecastList.add(Forecast(date: DateTime.now(), icon: 'assets/images/sunny.png', temperature: '22', windSpeed: '1.5'));
    forecastList.add(Forecast(date: DateTime.now(), icon: 'assets/images/sunny.png', temperature: '22', windSpeed: '1.5'));
    forecastList.add(Forecast(date: DateTime.now(), icon: 'assets/images/sunny.png', temperature: '22', windSpeed: '1.5'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListView.builder(itemBuilder: (context, index){
        return ForecastCard(date: forecastList[index].date, icon: forecastList[index].icon, temperature: forecastList[index].temperature, windSpeed: forecastList[index].windSpeed);
      }),
    );
  }
}

class Forecast{
  final DateTime date;
  final String icon;
  final String temperature;
  final String windSpeed;

  const Forecast({required this.date, required this.icon, required this.temperature, required this.windSpeed});
}