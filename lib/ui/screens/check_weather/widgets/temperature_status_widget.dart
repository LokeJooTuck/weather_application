import 'package:flutter/material.dart';

class TemperatureStatus extends StatelessWidget {
  const TemperatureStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
              child: LayoutBuilder(
                builder: (context,constraints) {
                
                  return SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxHeight,
                    child: Image.asset(
                      'assets/images/weather_icons/Sunny.png',
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  );
                }
              ),
            ),
            
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Text(
                    'Clear',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  );
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '25',
                        style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          '°C',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold,
                              ),
                          
                        ),
                      ),
      ],
    );
  }
              ),
            )
          ],
        );
      }
    );
  }
}