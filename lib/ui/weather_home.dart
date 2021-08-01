import 'package:flutter/material.dart';
import 'package:my_weather/Network/network.dart';
import 'package:my_weather/ui/weather_list_view.dart';
import 'package:provider/provider.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({Key? key}) : super(key: key);

  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  // Future<WeatherForecastModel>? data;
  String _cityName = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // data = Network().populateWeather(_cityName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffBC2C35), Color(0xffF1B14B)],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft)),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  _textField(),
                  _cityName.isEmpty.toString() == 'true'
                      ? Container(
                          child: Center(
                            child: Text('Please Enter a City or Country'),
                          ),
                        )
                      : WeatherListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border(
            top: BorderSide.none,
            bottom: BorderSide.none,
            left: BorderSide.none,
            right: BorderSide.none,
          ),
        ),
        child: TextField(
          style: TextStyle(
            color: Colors.black,
          ),
          onSubmitted: (value) {
            setState(() {
              _cityName = value;
            });
            Provider.of<Network>(context, listen: false).onSearch(value);
          },
          decoration: InputDecoration(
            hintText: 'Enter City Name',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: EdgeInsets.all(8.0),
          ),
        ),
      ),
    );
  }
}
