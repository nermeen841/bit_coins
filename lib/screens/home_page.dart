import 'package:bit_coins/core/Coin_data.dart';
import 'package:bit_coins/core/design_utils.dart';
import 'package:bit_coins/screens/data_visualization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index;

  @override
  Widget build(BuildContext context ,) {
    return Scaffold(

      body:  Stack(
        children: [
          DataVisualization(),
          _body(context, index),

        ],
      )
    );
  }



}



Widget _body( BuildContext context , index){
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(left: 15 , right: 15 , top: 15),
      child: Column(
        children: [
         Padding(
           padding: EdgeInsets.only( top: 320),
           child:  Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,

             children: [
               Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Main_text("Asset" , color: Colors.white),
                   SizedBox(
                     height: 10,
                   ),
                   Container(
                     width: 150,
                     height: 40,
                     child: TextField(
                       keyboardType: TextInputType.number,
                       decoration: InputDecoration(
                         hintText: "enter number",
                           hintStyle: TextStyle(
                               color: Colors.white
                           )
                       ),
                     ),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular( 10.0),
                         border: Border.all( color: Colors.white)
                     ),
                   ),
                 ],
               ),
               SizedBox( width: 5,),
               Row(
                 children: [
                   Column(
                     children: [
                       Main_text("Duration" , color: Colors.white),
                       SizedBox(
                         height: 10,
                       ),
                       Container(
                         width: 150,
                         height: 40,
                         child: TextField(
                           keyboardType: TextInputType.number,
                           decoration: InputDecoration(
                             hintText: "enter Time",
                             hintStyle: TextStyle(
                               color: Colors.white,
                             )
                           ),
                         ),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular( 10.0),
                           border: Border.all( color: Colors.white)
                         ),
                       ),
                     ],
                   )
                 ],
               ),
             ],
           ),
         ),

         SizedBox(
           height: 100,
         ),

         Center(
           child:  Column(
             crossAxisAlignment: CrossAxisAlignment.start,

             children: [
               Main_text("BTC" , color: Colors.white),
               Row(
                 mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   RaisedButton(
                     child: Text("High"),
                     color: Colors.green,
                     onPressed: () {
                     },
                   ),

                   SizedBox(
                     width: 10,
                   ),

                   RaisedButton(
                     child: Text("Low"),
                     color: Colors.red,
                     onPressed: () {  },
                   )
                 ],
               ),
             ],
           ),
         )
        ],
      ),


    ),
  );
}