import 'package:flutter/material.dart';

class GradientListCardView extends StatelessWidget {
  final List<Color> colors;
  final Color iconColor;
  final String cityName;
  final String weatherCondition;
  final String temperature;
  final IconData weatherIcon;
  final IconData locationIcon;
  final Color locationIconColor;

  GradientListCardView({
    super.key,
    this.colors = const [Color(0xff545567), Color(0xff102384)],
    this.iconColor = Colors.white,
    this.cityName = "New York",
    this.weatherCondition = "Sunny",
    this.temperature = "12°",
    this.weatherIcon = Icons.notification_important,
    this.locationIcon = Icons.location_on,
    this.locationIconColor = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(weatherIcon, color: iconColor),
              const SizedBox(width: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cityName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        locationIcon,
                        color: locationIconColor,
                        size: 30,
                      ),
                    ],
                  ),
                  Text(
                    weatherCondition,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            temperature,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
