import 'package:flutter/cupertino.dart';

class weatherModel {
  final String weatherStateName;
  final double maxtemp;
  final double mintemp;
  final double temp;
  final String cityname;

 weatherModel( {this.weatherStateName,this.maxtemp,
       this.mintemp, this.temp, this.cityname});
}
