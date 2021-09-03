import 'package:flutter/material.dart';

class OllieLogo extends StatelessWidget {
  const OllieLogo({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Image.asset(
        'assets/images/ollie_logo.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class CarImage extends StatelessWidget {
  const CarImage({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Image.asset(
        'assets/images/ollie_car.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
