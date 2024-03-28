import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_current_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/cubits/get_current_weather_cubit/get_weather_states.dart';
import 'package:weatherapp/models/get_weather_theme.dart';
import 'package:weatherapp/screens/search_page.dart';
import 'package:weatherapp/widgets/noweather.dart';
import 'package:weatherapp/widgets/weather_info.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // forceMaterialTransparency: true,
        backgroundColor: getThemeColor(
          BlocProvider.of<GetWeatherCubit>(context)
              .weatherModel
              ?.weatherCondition,
        ),
        title: const Text(
          'WeatherApp ⛅ ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => SearchPage()),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body:
          BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
        if (state is InitialWeatherState) {
          return Noweather();
        } else if (state is WeatherLoadedState) {
          return WeatherInfoBody(
            weather: state.weatherModel,
          );
        } else {
          return Text('there was an error');
        }
      }),
    );
  }
}
// weatherModel == null ? const Noweather() : WeatherInfoBody(),

//HOW TO CREATE A BLOCk "bussines logic compunent" OR CUBIT
//Create States
//Create cubit
//Create function
//Provide cubit
//integrate cubit
//trigger cubit
// howa mas2ol 3an el logic we el state '3an ely byat3'yar'
