import 'package:flutter/material.dart';
import 'dateTimePicker.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
    AppBar(title: Text("Date and Time Picker"),
    backgroundColor: Colors.lightGreen[500],
    ),

    body:Center(child: DateTimePicker(),) ,
    );
    
  }
}