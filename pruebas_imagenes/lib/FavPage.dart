import 'package:flutter/material.dart';
import 'Sol.dart';
import 'photos.dart';
import 'Espuma.dart';
final double espacio=6.0;

class FavPage extends StatefulWidget {
  @override
  _FavPageState createState() => _FavPageState();
}
class _FavPageState extends State<FavPage> {
  bool reseter; 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen()
    );
  }
}
class HomeScreen extends StatelessWidget {
  final double espacio=6.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
      backgroundColor:Colors.blue[700] ,    
      title:Center(child:
      RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text:"        Sol             ", style:TextStyle(
            fontFamily:"Roboto Bold",
           fontSize: 28,
           color:Colors.brown[900]
            )
          ),
          TextSpan(
            text:"       Espuma", style:TextStyle(
            fontFamily:"Roboto Bold",
           fontSize: 28,
           color:Colors.yellow[700]
            )
          ), 
        ]),
        )
      )),
       body:Stack(children: <Widget>[
          Container(
            decoration:BoxDecoration(
              color:Colors.amberAccent
            )
          ), 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child:
              ListView(children: <Widget>[
                for(var item in sol ) Column(children: <Widget>[
                  if(item.fav==true)ImageBox(item),SizedBox(height: espacio) 
                ],)
            ],)),
            VerticalDivider(width:espacio,color: Colors.transparent,thickness: espacio, ),
            Expanded(child: 
              ListView(children: <Widget>[
            for(var item in espuma ) Column(children: <Widget>[
                  if(item.fav==true)ImageBox(item),SizedBox(height: espacio)  
                ],)
            ],),),
        ],)
    ],),
    );  
}}
