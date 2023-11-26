import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_application/ui/screens/add_location/widgets/add_new_location_button.dart';
import 'package:weather_application/ui/screens/add_location/widgets/weather_summary_card.dart';
import 'package:weather_application/ui/screens/check_weather/check_weather_screen.dart';

import '../../../page_navigation.dart';

class SavedLocationsPage extends StatelessWidget {
  const SavedLocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.3, 0.4, 0.6, 0.7, 1],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color.fromRGBO(57, 26, 73, 1),
            Color.fromRGBO(48, 29, 92, 1),
            Color.fromRGBO(38, 33, 113, 1),
            Color.fromRGBO(48, 29, 92, 1),
            Color.fromRGBO(57, 26, 73, 1),
          ],
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SavedLocationsPageContent(),
        ),
      ),
    );
  }
}

class SavedLocationsPageContent extends StatefulWidget {
  const SavedLocationsPageContent({super.key});

  @override
  State<SavedLocationsPageContent> createState() => _SavedLocationsPageContentState();
}

class _SavedLocationsPageContentState extends State<SavedLocationsPageContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Saved Locations',
                  style: GoogleFonts.poppins().copyWith(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              IconButton(
                onPressed: () {

                  navigateToPage(context, const CheckWeatherScreen());
                },
                icon: const Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const WeatherSummaryCard(),
          const SizedBox(height: 24),
          AddNewLocationButton(),
        ],
      ),
    );
  }
}
