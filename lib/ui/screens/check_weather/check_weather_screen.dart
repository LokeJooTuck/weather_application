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
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
         // Background Image with Dark Overlay
      Image.asset(
        'assets/images/default_background.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.black.withOpacity(0.3),
      ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: header(),
          body: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              SizedBox(
                height: height * 0.1,
                child: const Flexible(child: SelectedDateWidget())),
               SizedBox(
                height: height * 0.3,
                 child: Flexible(
                  
                  flex: 2, child: TemperatureStatus()),
               ),
              SizedBox(
                height: height * 0.03,
              
              ),
              SizedBox(
                height: height * 0.1,
                child: const Flexible(
                  flex: 2,
                  child: OtherStatus()),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
    
              SizedBox(
                height: height * 0.2,
                child: const Expanded(
                  flex: 2,
                  child: ForcastList()),
              ),
          
            ],
          ),
        ),
      ],
    );
  }
}
