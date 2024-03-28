import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String ApiKey = '1ee235f269404c75a04195523242002';
  WeatherService({required this.dio});
  Future<WeatherModel?> getWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$ApiKey&q=$cityName&days=1&aqi=no&alerts=no');
      response.statusCode;
      WeatherModel weatherModel = WeatherModel.fromJason(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errorMessg = e.response?.data['error']['message'] ??
          'opps there was an error please try again later';
      throw Exception(errorMessg);
    } catch (e) {
      log(e.toString());
      throw Exception('opps there was an error please try again later');
    }
  }
}
