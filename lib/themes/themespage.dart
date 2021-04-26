import 'package:flutter/material.dart';

class themespage  extends StatelessWidget {
  final String cityname,weatherStateName;
  final int maxtemp,minitemp,thetemp;
  final Color colors;
  final String image;
  const themespage({Key key, this.cityname, this.maxtemp, this.minitemp, this.thetemp,this.weatherStateName,this.colors,this.image}) : super(key: key);

@override
  Widget build(BuildContext context) {


    return Scaffold(
      //  extendBodyBehindAppBar: true,
     /* appBar: AppBar(
        backgroundColor: colors,
        elevation: 0.0,
      ),*/
        body:Container(

    //color: color,
color: colors,

            child: Column(

            children:[

              Container(
                padding: const EdgeInsets.only(top: 30),

                child: Center(
                  child: Text(cityname,style: TextStyle(fontSize: 50,color: Colors.white),),
                ),
              ),


                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     //margin: EdgeInsets.only(top: 50),
                     child: Row(

                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                         Text(thetemp.toString()+"°C",style: TextStyle(fontSize: 40,color: Colors.white),),

                         Text(weatherStateName,style: TextStyle(fontSize: 30,color: Colors.white),),

                       ],
                     ),

                   ),
                 ),
              Expanded(



                  child: Padding(
                    padding: const EdgeInsets.all(0.1),
                    child: Align(

                      alignment: FractionalOffset.bottomCenter,

                      child:Container(
                      height: 400,
                      width: 500,
                        color: Colors.yellow,
                        child: Image.asset(image,fit: BoxFit.cover,),

                      ),

                    ),
                  ),
                ),






            ]

            ),

           ),

  );



  }



}
