import 'package:flutter/material.dart';
import 'package:navigation_app/Screen1.dart';
import 'package:navigation_app/Screen2.dart';
void main() => runApp(NavigationApp());

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/': (context)=> HomeScreen(),
        'screen1': (context) => Screen1(),
        'final': (context) => Screen2()
      } ,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Navigation App")
      ),
      body:Center(
        child:Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
        RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context,"screen1");
          },
            child:Text("Go To Screen1")
          
          ),
         RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context,"final");
          },
            child:Text("Go To Screen2")
          
          ) 
          ],)
          ,)
    );
  }
}