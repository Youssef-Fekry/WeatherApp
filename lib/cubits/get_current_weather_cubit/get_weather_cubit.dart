import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_current_weather_cubit/get_weather_states.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialWeatherState());

  WeatherModel? weatherModel;

  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await WeatherService(dio: Dio()).getWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel!));
    } catch (e) {
      emit(WeatherFailuresState(e.toString()));
    }
  }
}
