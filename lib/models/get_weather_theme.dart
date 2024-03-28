import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == 'sunny') {
    return Colors.orange;
  } else if (condition == 'partly cloudy') {
    return Colors.yellow;
  } else if (condition == 'cloudy') {
    return Colors.grey;
  } else if (condition == 'overcast') {
    return Colors.blueGrey;
  } else if (condition == 'mist') {
    return Colors.lightBlue;
  } else if (condition == 'patchy rain possible') {
    return Colors.lightGreen;
  } else if (condition == 'patchy snow possible' ||
      condition == 'blowing snow' ||
      condition == 'blizzard' ||
      condition == 'patchy sleet possible' ||
      condition == 'patchy freezing drizzle possible') {
    return Colors.lightBlue;
  } else if (condition == 'thundery outbreaks possible') {
    return Colors.deepPurple;
  } else if (condition == 'fog') {
    return Colors.grey;
  } else if (condition == 'freezing fog' ||
      condition == 'patchy light drizzle' ||
      condition == 'light drizzle' ||
      condition == 'freezing drizzle') {
    return Colors.lightBlue;
  } else if (condition == 'heavy freezing drizzle') {
    return Colors.lightBlue;
  } else if (condition == 'patchy light rain') {
    return Colors.lightGreen;
  } else if (condition == 'light rain') {
    return Colors.lightGreen;
  } else if (condition == 'moderate rain at times') {
    return Colors.green;
  } else if (condition == 'moderate rain') {
    return Colors.green;
  } else if (condition == 'heavy rain at times') {
    return Colors.green;
  } else if (condition == 'heavy rain') {
    return Colors.green;
  } else if (condition == 'light freezing rain' ||
      condition == 'moderate or heavy freezing rain' ||
      condition == 'light sleet' ||
      condition == 'moderate or heavy sleet' ||
      condition == 'patchy light snow' ||
      condition == 'light snow' ||
      condition == 'patchy moderate snow' ||
      condition == 'moderate snow' ||
      condition == 'patchy heavy snow' ||
      condition == 'heavy snow' ||
      condition == 'ice pellets') {
    return Colors.lightBlue;
  } else if (condition == 'light rain shower') {
    return Colors.lightGreen;
  } else if (condition == 'moderate or heavy rain shower' ||
      condition == 'torrential rain shower') {
    return Colors.green;
  } else if (condition == 'light sleet showers' ||
      condition == 'moderate or heavy sleet showers' ||
      condition == 'light snow showers' ||
      condition == 'moderate or heavy snow showers' ||
      condition == 'light showers of ice pellets' ||
      condition == 'moderate or heavy showers of ice pellets') {
    return Colors.lightBlue;
  } else if (condition == 'patchy light rain with thunder' ||
      condition == 'moderate or heavy rain with thunder' ||
      condition == 'patchy light snow with thunder' ||
      condition == 'moderate or heavy snow with thunder') {
    return Colors.deepPurple;
  }
  // else if (condition == null) {
  //   return Colors.blue;
  // }
  else {
    return Colors.orange;
  }
}
