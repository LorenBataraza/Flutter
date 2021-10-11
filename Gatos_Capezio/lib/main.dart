import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Application",
      theme: ThemeData(
        primarySwatch: Colors.green,
        ),
      home:HomePage()
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child:Text("Que lindo",
        style:TextStyle(
          fontFamily:"Roboto Bold",
           fontSize: 28)
        ))
      ),
       body:Center(
       child:
       Column(mainAxisAlignment: MainAxisAlignment.start,
         children:[
       Container(
         child:Center(
           child: Text(
             "Que",
             style:TextStyle(
          fontFamily:"Roboto Bold",
           fontSize: 30,
           color: Colors.white
           )
           ),
         ) ,
           width: 300,
           height: 60,
           color: Colors.blue[900],         
         ),
         Container(
         child:Center(
           child: Text(
             "Esta",
             style:TextStyle(
          fontFamily:"Roboto Bold",
           fontSize: 28,
           color: Colors.white
           )
           ),
         ) ,
           width: 300,
           height: 60,
           color: Colors.blue[700],         
         ),
         Container(
           decoration: BoxDecoration(
             color: Colors.blue[500],    
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(20),
               bottomRight: Radius.circular(20))
           ),
         child:Center(
           child: Text(
             "Quedando",
             style:TextStyle(
          fontFamily:"Roboto Bold",
           fontSize: 28,
           color: Colors.white
           )
           ),
         ) ,
           width: 300,
           height: 60,   
         ),
         ]
         )),
    );
  }
}
