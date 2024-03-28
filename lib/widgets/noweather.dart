import 'package:flutter/material.dart';

class Noweather extends StatelessWidget {
   Noweather({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'there is no weather please go to the search icon 🔍 and search for the place ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
