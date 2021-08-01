import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_weather/model/weather_model.dart';
import 'package:my_weather/util/Util.dart';

class BottomForecastList extends StatelessWidget {
  const BottomForecastList(
      {Key? key, required this.snapshot, required this.context})
      : super(key: key);

  final BuildContext context;
  final AsyncSnapshot<WeatherForecastModel>? snapshot;

  @override
  Widget build(BuildContext context) {
    var foreCastList = snapshot?.data?.forecast.forecastday;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Container(
        // height: 40,
        width: MediaQuery.of(context).size.width / 1.2,
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, int index) => Container(
                  height: 1.0,
                  color: Color(0xff949494),
                ),
            itemCount: foreCastList!.length,
            itemBuilder: (BuildContext context, int index) {
              var forecast = foreCastList[index].day;

              var date;
              String formatted() {
                if (foreCastList[index].dateEpoch != null) {
                  date = foreCastList[index].dateEpoch;
                  date = Util.getTime(DateTime.fromMillisecondsSinceEpoch(
                      date * 1000,
                      isUtc: true));
                  return date.split(',')[0];
                } else {
                  return '';
                }
              }

              return Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatted(),
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Image.network(
                      'https:${forecast!.condition!.icon}',
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Row(
                        children: [
                          Text('${forecast.maxtempC}\u2103'),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('${forecast.mintempC}\u2103'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
