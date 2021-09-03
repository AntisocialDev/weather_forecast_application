import 'package:flutter/material.dart';

class PhoneImage extends StatefulWidget {
  const PhoneImage({Key? key}) : super(key: key);

  @override
  _PhoneImageState createState() => _PhoneImageState();
}

class _PhoneImageState extends State<PhoneImage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 154,
        width: 64,
        child: Image.asset(
          'assets/images/smartphone.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
