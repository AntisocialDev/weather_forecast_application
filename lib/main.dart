import 'package:flutter/material.dart';
import 'package:my_weather/Network/network.dart';
import 'package:my_weather/ui/weather_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

ThemeData _appTheme = ThemeData().copyWith(
    textTheme: TextTheme().copyWith(
        bodyText2: TextStyle(
  fontFamily: 'Roboto',
)));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Network>(create: (context) => Network())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _appTheme,
        home: WeatherHome(),
      ),
    );
  }
}
