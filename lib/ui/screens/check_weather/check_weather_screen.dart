import 'package:flutter/material.dart';
import 'package:weather_application/ui/screens/check_weather/widgets/forcast_list.dart';
import 'package:weather_application/ui/screens/check_weather/widgets/other_status_widget.dart';
import 'package:weather_application/ui/screens/check_weather/widgets/selected_date_widget.dart';
import 'package:weather_application/ui/screens/check_weather/widgets/temperature_status_widget.dart';

import 'widgets/app_bar.dart';

class CheckWeatherScreen extends StatefulWidget {
  const CheckWeatherScreen({super.key});

  @override
  State<CheckWeatherScreen> createState() => _CheckWeatherScreenState();
}

class _CheckWeatherScreenState extends State<CheckWeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          // header(),
          const SelectedDateWidget(),
          // const TemperatureStatus(),
          const OtherStatus(),
          // const ForecastList()
        ],
      ),



    );
  }
}
