import 'package:flutter/material.dart';

class WeatherSummaryCard extends StatelessWidget {
  const WeatherSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: const Color(0x66AAA5A5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Country',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      shadows: <Shadow>[
                        const Shadow(
                          color: Colors.black38, // Choose the color of the shadow
                          blurRadius: 8.0, // Adjust the blur radius for the shadow effect
                          offset: Offset(1.0, 4.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Weather state',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 0.8),
                        ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Text(
                        'Humidity  ',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: const Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                      ),
                      Text(
                        '50%',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Wind  ',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: const Color.fromRGBO(255, 255, 255, 0.8),
                            ),
                      ),
                      Text(
                        '15km/h',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/weather_icons/PartlyCloudyDay.png'),
                  width: 50,
                  height: 50,
                ),
                Row(
                  children: [
                    Text(
                      '33',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        '\u2103',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
