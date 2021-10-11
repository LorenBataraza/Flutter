import 'package:flutter/material.dart';
import 'box.dart';
import 'image.dart';
import 'dart:math';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Application",
      theme: ThemeData(
        primarySwatch: Colors.green,
        ),
      home:MainPage()
    );
  }
}
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Búsqueda de fotos"),
        ),
      body:
      Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          color:Colors.cyan 
        ),
        DisplayFoto(titulo: "Mejores fotos 2019",descripcion:"Hermosa foto en todo aspecto, ganó el premio del mejor mate en los kids choise awards 2012", assetPath:"foto_epic.jpg",),
      ],) 
    );  
}}

/*
        FlatButton(
          onPressed: 
          )
*/