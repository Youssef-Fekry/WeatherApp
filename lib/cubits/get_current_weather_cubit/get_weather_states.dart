import 'package:weatherapp/models/weather_model.dart';

class WeatherState {}

class InitialWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailuresState extends WeatherState {
  final String Errormsg;

  WeatherFailuresState(this.Errormsg);
}
