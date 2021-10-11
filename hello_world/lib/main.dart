import 'package:flutter/material.dart';
import 'image.dart';
import 'basicbox.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Application",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        ),
      home:ParteInicial()
    );
  }
}
class ParteInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xB3FFFFFF),
      appBar: AppBar(
      title:Center(
          child:Text("Hola!! !",
        style:TextStyle(
          fontFamily:"Roboto Bold",
           fontSize: 28)
        ))
      ),
      body:
       Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children:[
        SizedBox(height: 8),
        Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        BasicBox(
         300.0,60.0,"Fede ",boxColor: Colors.blue[300],
        ), 
          BasicBox(
          300.0,60.0,"Feliz cumpleaños",boxColor:Colors.blue[500]
         ), 
        BasicBox(
          300.0,60.0,"Sabiamos que las querías...",boxColor:Colors.blue[900]
         ),  
       ],),
       BasicBox(
          120.0-8.6,180.0,"En este día especial",boxColor:Colors.blue[700]
         ),
       ],),
          
         ImageBanner("assets/images/ojotas_aldosivi.jpg"),
         BasicBox(
          500.0,60.0,"Hola muchachos",boxColor:Colors.indigo
         ),
         ]),
    );
  }
}
class Emojis extends StatefulWidget {
  @override
  _EmojisState createState() => _EmojisState();
}

class _EmojisState extends State<Emojis> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
