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
  

  class FoldingItem extends StatelessWidget {
  final Widget child;
  final bool isOpen;
  final Duration duration;

  FoldingItem({
    required this.child,
    required this.isOpen,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: isOpen ? 0.0 : 1.0, end: isOpen ? 1.0 : 0.0),
      duration: duration,
      builder: (context, value, child) {
        return Transform(
          transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateX(value * 3.14),
          alignment: Alignment.center,
          child: child,
        );
      },
      child: child,
    );
  }
}
