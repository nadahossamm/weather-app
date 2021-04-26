import 'package:flutter/material.dart';
import 'package:weather/Models/weather_model.dart';
import 'package:weather/themes/search.dart';



class noweather extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
              return search();

            })); })
          ],

        ),
          body:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(

                child: Text("There is no weather 😞 ,Start searching now 🔍",style: TextStyle(fontSize: 25),),
            ),
          ),

    );
  }}