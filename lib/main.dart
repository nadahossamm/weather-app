import 'package:flutter/material.dart';
import 'package:weather/Models/weather_model.dart';
import 'package:weather/services/weather_Service.dart';
//import 'file:///E:/nada/weather/lib/Weather_Data/search.dart';
import 'noweather.dart';

void main() {
  runApp(MyApp());
}

   class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: noweather()

    );
  }}


