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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: header(context),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const Flexible(child: SelectedDateWidget()),
          Container(height: 270, child: TemperatureStatus()),
          // Container(
          //   height: 320,
          //   child: TemperatureStatus()),
          const Flexible(child: OtherStatus()),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const Flexible(flex: 2, child: ForcastList()),
          //  Container(
          //   height: MediaQuery.of(context).size.height*0.25,
          //   child: ForcastList())
        ],
      ),
    );
  }
}
