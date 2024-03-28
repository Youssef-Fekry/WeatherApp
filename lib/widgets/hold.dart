// // import 'package:flutter/material.dart';
// // import 'package:weather_app/models/weather_model.dart';

// // class WeatherInfoBody extends StatelessWidget {
// //   const WeatherInfoBody({Key? key, required this.weatherModel}) : super(key: key);
// //   final WeatherModel weatherModel;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 16),
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           const Text(
// //             'Alexandria',
// //             style: TextStyle(
// //               fontWeight: FontWeight.bold,
// //               fontSize: 32,
// //             ),
// //           ),
// //           const Text(
// //             'updated at 23:46',
// //             style: TextStyle(
// //               fontSize: 24,
// //             ),
// //           ),
// //           const SizedBox(
// //             height: 32,
// //           ),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: [
// //               Image.asset(
// //                 'assets/images/cloudy.png',
// //               ),
// //               const Text(
// //                 '17',
// //                 style: TextStyle(
// //                   fontWeight: FontWeight.bold,
// //                   fontSize: 32,
// //                 ),
// //               ),
// //               const Column(
// //                 children: [
// //                   Text(
// //                     'Maxtemp: 24',
// //                     style: TextStyle(
// //                       fontSize: 16,
// //                     ),
// //                   ),
// //                   Text(
// //                     'Mintemp: 16',
// //                     style: TextStyle(
// //                       fontSize: 16,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //           const SizedBox(
// //             height: 32,
// //           ),
// //           const Text(
// //             'Ligh Rain',
// //             style: TextStyle(
// //               fontWeight: FontWeight.bold,
// //               fontSize: 32,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:weather_app/models/weather_model.dart';
// import 'package:weather_app/providers/weather_provider.dart';
// import 'package:weather_app/services/weather_service.dart';

// class SearchPage extends StatelessWidget {
//   String? cityName;
//   SearchPage({this.updateUi});
//   VoidCallback? updateUi;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Search a City'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: TextField(
//             onChanged: (data) {
//               cityName = data;
//             },
//             onSubmitted: (data) async {
//               cityName = data;

//               WeatherService service = WeatherService();

//               WeatherModel? weather =
//                   await service.getWeather(cityName: cityName!);

//               Provider.of<WeatherProvider>(context, listen: false).weatherData =
//                   weather;
//               Provider.of<WeatherProvider>(context, listen: false).cityName =
//                   cityName;

//               Navigator.pop(context);
//             },
//             decoration: InputDecoration(
//               contentPadding:
//                   EdgeInsets.symmetric(vertical: 32, horizontal: 24),
//               label: Text('search'),
//               suffixIcon: GestureDetector(
//                   onTap: () async {
//                     WeatherService service = WeatherService();

//                     WeatherModel? weather =
//                         await service.getWeather(cityName: cityName!);

//                     Provider.of<WeatherProvider>(context, listen: false)
//                         .weatherData = weather;
//                     Provider.of<WeatherProvider>(context, listen: false)
//                         .cityName = cityName;

//                     Navigator.pop(context);
//                   },
//                   child: Icon(Icons.search)),
//               border: OutlineInputBorder(),
//               hintText: 'Enter a city',
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
/* switch (condition) {
    case 'sunny':
      return Colors.orange;
    case 'partlyCloudy':
      return Colors.yellow;
    case 'cloudy':
      return Colors.grey;
    case 'overcast':
      return Colors.blueGrey;
    case 'mist':
      return Colors.lightBlue;
    case 'patchyRainPossible':
      return Colors.lightGreen;
    case 'patchySnowPossible':
    case 'blowingSnow':
    case 'blizzard':
    case 'patchySleetPossible':
    case 'patchyFreezingDrizzlePossible':
      return Colors.lightBlue;
    case 'thunderyOutbreaksPossible':
      return Colors.deepPurple;
    case 'fog':
      return Colors.grey;
    case 'freezingFog':
    case 'patchyLightDrizzle':
    case 'lightDrizzle':
    case 'freezingDrizzle':
      return Colors.lightBlue;
    case 'heavyFreezingDrizzle':
      return Colors.lightBlue;
    case 'patchyLightRain':
      return Colors.lightGreen;
    case 'lightRain':
      return Colors.lightGreen;
    case 'moderateRainAtTimes':
      return Colors.green;
    case 'moderateRain':
      return Colors.green;
    case 'heavyRainAtTimes':
      return Colors.green;
    case 'heavyRain':
      return Colors.green;
    case 'lightFreezingRain':
    case 'moderateOrHeavyFreezingRain':
    case 'lightSleet':
    case 'moderateOrHeavySleet':
    case 'patchyLightSnow':
    case 'lightSnow':
    case 'patchyModerateSnow':
    case 'moderateSnow':
    case 'patchyHeavySnow':
    case 'heavySnow':
    case 'icePellets':
      return Colors.lightBlue;
    case 'lightRainShower':
      return Colors.lightGreen;
    case 'moderateOrHeavyRainShower':
    case 'torrentialRainShower':
      return Colors.green;
    case 'lightSleetShowers':
    case 'moderateOrHeavySleetShowers':
    case 'lightSnowShowers':
    case 'moderateOrHeavySnowShowers':
    case 'lightShowersOfIcePellets':
    case 'moderateOrHeavyShowersOfIcePellets':
    case 'patchyLightRainWithThunder':
    case 'moderateOrHeavyRainWithThunder':
    case 'patchyLightSnowWithThunder':
    case 'moderateOrHeavySnowWithThunder':
      return Colors.lightBlue;
    default:
      return Colors.blue;
  }


    // switch (condition) {
  //   case 'sunny':
  //     return Colors.orange;
  //   case 'partly cloudy':
  //     return Colors.yellow;
  //   case 'cloudy':
  //     return Colors.grey;
  //   case 'overcast':
  //     return Colors.blueGrey;
  //   case 'mist':
  //     return Colors.lightBlue;
  //   case 'patchy rain possible':
  //     return Colors.lightGreen;
  //   case 'patchy snow possible':
  //   case 'blowing snow':
  //   case 'blizzard':
  //   case 'patchy sleet possible':
  //   case 'patchy freezing drizzle possible':
  //     return Colors.lightBlue;
  //   case 'thundery outbreaks possible':
  //     return Colors.deepPurple;
  //   case 'fog':
  //     return Colors.grey;
  //   case 'freezing fog':
  //   case 'patchy light drizzle':
  //   case 'light drizzle':
  //   case 'freezing drizzle':
  //     return Colors.lightBlue;
  //   case 'heavy freezing drizzle':
  //     return Colors.lightBlue;
  //   case 'patchy light rain':
  //     return Colors.lightGreen;
  //   case 'light rain':
  //     return Colors.lightGreen;
  //   case 'moderate rain at times':
  //     return Colors.green;
  //   case 'moderate rain':
  //     return Colors.green;
  //   case 'heavy rain at times':
  //     return Colors.green;
  //   case 'heavy rain':
  //     return Colors.green;
  //   case 'light freezing rain':
  //   case 'moderate or heavy freezing rain':
  //   case 'light sleet':
  //   case 'moderate or heavy sleet':
  //   case 'patchy light snow':
  //   case 'light snow':
  //   case 'patchy moderate snow':
  //   case 'moderate snow':
  //   case 'patchy heavy snow':
  //   case 'heavy snow':
  //   case 'ice pellets':
  //     return Colors.lightBlue;
  //   case 'light rain shower':
  //     return Colors.lightGreen;
  //   case 'moderate or heavy rain shower':
  //   case 'torrential rain shower':
  //     return Colors.green;
  //   case 'light sleet showers':
  //   case 'moderate or heavy sleet showers':
  //   case 'light snow showers':
  //   case 'moderate or heavy snow showers':
  //   case 'light showers of ice pellets':
  //   case 'moderate or heavy showers of ice pellets':
  //     return Colors.lightBlue;
  //   case 'patchy light rain with thunder':
  //   case 'moderate or heavy rain with thunder':
  //   case 'patchy light snow with thunder':
  //   case 'moderate or heavy snow with thunder':
  //     return Colors.deepPurple;
  //   default:
  //     return Colors.yellow;}
  */ 