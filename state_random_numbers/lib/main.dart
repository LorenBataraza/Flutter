import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(RandomWidget());

class RandomWidget extends StatefulWidget {
  @override
  _RandomWidgetState createState() => _RandomWidgetState();
}

class _RandomWidgetState extends State<RandomWidget> {
   int _randomNum;
   int _laureanoputo;
   int _laureanoDefinitivo;
  void _makeRandomNumber(){
    setState(() {
    _randomNum= Random().nextInt(10);
    _laureanoputo=Random().nextInt(10);
    _laureanoDefinitivo = _laureanoputo + _randomNum;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("RandomNumber"),
      ),
      
      body: 
      SafeArea(
          child: Column(
        children: <Widget>[
          Text("Random Number: $_laureanoDefinitivo ",
              style: TextStyle(
                fontSize: 39,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto Bold",
              )),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        _makeRandomNumber();
      },
      child: Icon(Icons.accessibility),
      ),
    ));
  }
}
