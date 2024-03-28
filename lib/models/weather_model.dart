class WeatherModel {
  String cityname;
  DateTime date;
  String? image;
  double temp;
  double maxtemp;
  double mintemp;
  String weatherCondition;

  WeatherModel(
      {required this.cityname,
      required this.date,
      this.image,
      required this.temp,
      required this.maxtemp,
      required this.mintemp,
      required this.weatherCondition});

  factory WeatherModel.fromJason(jason) {
    return WeatherModel(
      cityname: jason['location']['name'],
      date: DateTime.parse(jason['current']['last_updated']),
      image: jason['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: jason['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxtemp: jason['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: jason['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: jason['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}
