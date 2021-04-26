import 'package:flutter/material.dart';

class Heavycloud  extends StatelessWidget {
final String cityname,weatherStateName;
final int maxtemp,minitemp,thetemp;

  const Heavycloud({Key key, this.cityname, this.maxtemp, this.minitemp, this.weatherStateName,this.thetemp}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 80),
          child: Center(
            // margin: EdgeInsets.only(top: 30),

            child: Column(

              children: [
                Text(cityname,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.cloud ,size: 80,color: Colors.white,),
                    Text(thetemp.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),

                    Column(
                      children: [
                        Text('Max'+maxtemp.toString() ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
                        Text('Min'+minitemp.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                      ],
                    )

                  ],
                ),
                Text(weatherStateName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}

