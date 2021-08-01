import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:my_weather/model/weather_model.dart';
import 'package:my_weather/util/Util.dart';

class Network with ChangeNotifier {
  Future<WeatherForecastModel>? data;
  Future<WeatherForecastModel> fetchWeather(String cityName) async {
    var finalUrl =
        'http://api.weatherapi.com/v1/forecast.json?key=${Util.apiKey}&q=$cityName&days=3&aqi=no&alerts=no';

    final response = await get(Uri.parse(finalUrl));

    if (response.statusCode == 200) {
      print(response.body);
      return WeatherForecastModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to get Weather');
    }
  }

  Future<WeatherForecastModel>? populateWeather(String cityName) {
    data = Network().fetchWeather(cityName);
    return data;
  }

  void onSearch(String cityName) {
    data = populateWeather(cityName);
    notifyListeners();
  }
}
