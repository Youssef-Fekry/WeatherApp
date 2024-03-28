import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_current_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/models/get_weather_theme.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  WeatherInfoBody({Key? key, required this.weather}) : super(key: key);
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          getThemeColor(weather.weatherCondition),
          getThemeColor(weather.weatherCondition)[300]!,
          getThemeColor(weather.weatherCondition)[50]!
        ], begin: Alignment.topCenter, end: Alignment.topCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityname,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              'updated at  ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Image.network(
                    "https:${weatherModel.image!}",
                  ),
                ),
                Text(
                  weatherModel.temp.round().toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'maxtemp: ${weatherModel.maxtemp.round()} ',
                      //
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp: ${weatherModel.mintemp.round()}',
                      //
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              weatherModel.weatherCondition,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
