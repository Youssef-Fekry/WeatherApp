import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == 'Sunny') {
    return Colors.orange;
  } else if (condition == 'Partly cloudy') {
    return Colors.yellow;
  } else if (condition == 'Cloudy') {
    return Colors.grey;
  } else if (condition == 'Overcast') {
    return Colors.blueGrey;
  } else if (condition == 'mist') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy rain possible') {
    return Colors.lightGreen;
  } else if (condition == 'Patchy snow possible' ||
      condition == 'Blowing snow' ||
      condition == 'Blizzard' ||
      condition == 'Patchy sleet possible' ||
      condition == 'Patchy freezing drizzle possible') {
    return Colors.lightBlue;
  } else if (condition == 'Thundery outbreaks possible') {
    return Colors.deepPurple;
  } else if (condition == 'Fog') {
    return Colors.grey;
  } else if (condition == 'Freezing fog' ||
      condition == 'Patchy light drizzle' ||
      condition == 'Light drizzle' ||
      condition == 'Freezing drizzle') {
    return Colors.lightBlue;
  } else if (condition == 'Heavy freezing drizzle') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy light rain') {
    return Colors.lightGreen;
  } else if (condition == 'Light rain') {
    return Colors.lightGreen;
  } else if (condition == 'Moderate rain at times') {
    return Colors.green;
  } else if (condition == 'Moderate rain') {
    return Colors.green;
  } else if (condition == 'Heavy rain at times') {
    return Colors.green;
  } else if (condition == 'Heavy rain') {
    return Colors.green;
  } else if (condition == 'Light freezing rain' ||
      condition == 'Moderate or heavy freezing rain' ||
      condition == 'Light sleet' ||
      condition == 'Moderate or heavy sleet' ||
      condition == 'Patchy light snow' ||
      condition == 'Light snow' ||
      condition == 'Patchy moderate snow' ||
      condition == 'Moderate snow' ||
      condition == 'Patchy heavy snow' ||
      condition == 'Heavy snow' ||
      condition == 'Ice pellets') {
    return Colors.lightBlue;
  } else if (condition == 'Light rain shower') {
    return Colors.lightGreen;
  } else if (condition == 'Moderate or heavy rain shower' ||
      condition == 'Torrential rain shower') {
    return Colors.green;
  } else if (condition == 'Light sleet showers' ||
      condition == 'Moderate or heavy sleet showers' ||
      condition == 'Light snow showers' ||
      condition == 'Moderate or heavy snow showers' ||
      condition == 'Light showers of ice pellets' ||
      condition == 'Moderate or heavy showers of ice pellets') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy light rain with thunder' ||
      condition == 'Moderate or heavy rain with thunder' ||
      condition == 'Patchy light snow with thunder' ||
      condition == 'Moderate or heavy snow with thunder') {
    return Colors.deepPurple;
  }
  // else if (condition == null) {
  //   return Colors.blue;
  // }
  else {
    return Colors.blue;
  }
}
