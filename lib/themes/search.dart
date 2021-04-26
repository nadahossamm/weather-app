import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/Models/weather_model.dart';
import 'package:weather/services/weather_Service.dart';
import 'package:weather/themes/Clear-theme.dart';
import 'package:weather/themes/themespage.dart';

import 'Heavy-cloud.dart';

final TextEditingController mycontroller = TextEditingController();

class search extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search a city"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: mycontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter city name",
                    suffixIcon: Icon(Icons.search),
                    labelText: "search",
                  ),
                ),
                FlatButton(
                  onPressed: () async {
                    try {
                      weatherServices weatherservice = weatherServices();
                      weatherModel weathermodel =
                          await weatherservice.fetchweather(mycontroller.text);
                      Color colors;
                      String image;

                      if (weathermodel.weatherStateName == 'Snow' || weathermodel.weatherStateName=="Sleet" || weathermodel.weatherStateName=="Hail")
                      {
                       image="lib/assets/snow.jpg";
                       colors=Colors.blue;
                        
                      }
                      else if(weathermodel.weatherStateName == 'Heavy Cloud' ) {

                        image="lib/assets/cloud.jpg";
                        colors=Color(0xff083663);

                      }
                      else if(weathermodel.weatherStateName == 'Showers' || weathermodel.weatherStateName == 'Light Rain'|| weathermodel.weatherStateName == 'Heavy Rain' ){

                        image="lib/assets/rain.jpg";
                        colors=Colors.lightBlue[400];

                      }

                      else if(weathermodel.weatherStateName == 'Thunderstorm' ){

                        image="lib/assets/thunder.jpg";
                        colors=Colors.blueGrey;

                      }
                      else if(weathermodel.weatherStateName == 'Clear' ){

                        image="lib/assets/clear.jpg";
                        colors=Colors.yellow;

                      }
                      else if(weathermodel.weatherStateName == 'Light Cloud' ){

                        image="lib/assets/lcloud.jpg";
                        colors=Colors.lightBlue[200];
                      }
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return themespage(
                              cityname: weathermodel.cityname,
                              maxtemp: weathermodel.maxtemp.round(),
                              minitemp:weathermodel.mintemp.round(),
                              weatherStateName:weathermodel.weatherStateName,
                              thetemp:weathermodel.temp.round() ,
                              colors: colors,
                              image: image,
                            );
                          }));
                      print("hi");
                      print(weathermodel.cityname);
                      print(weathermodel.maxtemp);
                      print(weathermodel.mintemp);
                      print(weathermodel.weatherStateName);
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  child: Text("Search"),
                  color: Colors.blue,
                )
              ],
            ),
          )),
    );
  }
}
