import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Screen2")
      ),
      body:Container(
        color:Colors.blueAccent,
      child:Center(
        child:RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
            child:Text("Go back")
          
          ) 
          ,))
    );
  }
}