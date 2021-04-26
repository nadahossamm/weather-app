import 'dart:convert';
import 'package:weather/Models/weather_model.dart';
import 'package:http/http.dart' as http;

class weatherServices {
  Future<weatherModel> fetchweather(String cityname) async {
    try {
      int id = await fetchid(cityname);

      http.Response response =
      await http.get("https://www.metaweather.com/api/location/$id/");
      var jsonMap = jsonDecode(response.body);
      var jsondata = jsonMap['consolidated_weather'][0];

      return weatherModel(
          weatherStateName: jsondata['weather_state_name'],
          maxtemp: jsondata['max_temp'],
          mintemp: jsondata['min_temp'],
          temp: jsondata['the_temp'],
          cityname: jsonMap['title']

      );
    }
    catch (ex)
    {
      print(ex);
    }
  }

  Future<int> fetchid(String cityname) async {
    try {
      http.Response response = await http.get(
          "https://www.metaweather.com/api/location/search/?query=$cityname");
      var jsonMap = jsonDecode(response.body)[0];
      int id = jsonMap['woeid'];
      return id;
    }
    catch (ex)
    {
      print(ex);
    }
  }
}
