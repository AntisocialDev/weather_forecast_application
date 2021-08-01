import 'package:flutter/material.dart';
import 'package:my_weather/Network/network.dart';
import 'package:my_weather/model/weather_model.dart';
import 'package:my_weather/ui/bottom_weather_forecast.dart';
import 'package:my_weather/util/Util.dart';
import 'package:provider/provider.dart';

class WeatherListView extends StatelessWidget {
  const WeatherListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Network>(
      builder: (context, myData, child) {
        return FutureBuilder(
            future: myData.data,
            builder: (BuildContext context,
                AsyncSnapshot<WeatherForecastModel> snapshot) {
                  
              final weather = snapshot.data?.current;
              var cityLocation = snapshot.data?.location;
              if (snapshot.hasData) {
                var date;
                String formatDate() {
                  if (weather?.lastUpdatedEpoch != null) {
                    date = weather!.lastUpdatedEpoch;
                    return Util.getTime(
                        DateTime.fromMillisecondsSinceEpoch(date * 1000));
                  } else {
                    return '';
                  }
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ' ${cityLocation?.name}, ${cityLocation?.country}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Calistoga',
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        '${weather?.condition?.text}',
                        style: TextStyle(color: Colors.white, fontSize: 24.0),
                      ),
                    ),
                    Image.network(
                      'https:${weather?.condition?.icon}',
                      height: 84,
                      width: 84,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      '${weather?.tempC} \u2103',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 72,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      formatDate(),
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    BottomForecastList(
                      context: context,
                      snapshot: snapshot,
                    ),
                  ],
                );
              } else {
                return Center(
                    child: Container(child: CircularProgressIndicator()));
              }
            });
      },
    );
  }
}
