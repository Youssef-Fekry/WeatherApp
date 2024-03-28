import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_current_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/models/get_weather_theme.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: getThemeColor(
          BlocProvider.of<GetWeatherCubit>(context)
              .weatherModel
              ?.weatherCondition,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
              Navigator.pop(context);
            },
            controller: _searchController,
            decoration: InputDecoration(
              label: Text('Search'),
              hintText: 'Enter a city...',
              border: OutlineInputBorder(),
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
                onPressed: () => _searchController.clear(),
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Perform the search here
                },
              ),
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(20.0),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

// appBar: AppBar(
//   title: Container(
//     // Add padding around the search bar
//     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//     // Use a Material design search bar
//     child: TextField(
//       controller: _searchController,
//       decoration: InputDecoration(
//         hintText: 'Search...',
//         // Add a clear button to the search bar
//         suffixIcon: IconButton(
//           icon: Icon(Icons.clear, color: Colors.black,),
//           onPressed: () => _searchController.clear(),
//         ),
//         // Add a search icon or button to the search bar
//         prefixIcon: IconButton(
//           icon: Icon(Icons.search, color: Colors.black,),
//           onPressed: () {
//             // Perform the search here
//           },
//         ),
//         // border: OutlineInputBorder(
//         //   borderRadius: BorderRadius.circular(20.0),
//         // ),
//       ),
//     ),
//   )
// ),

// appBar: AppBar(
//         iconTheme: const IconThemeData(color: Colors.white),
//         title: const Text(
//           'Search',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: const Color.fromARGB(255, 123, 186, 238),
//       ),
//     );