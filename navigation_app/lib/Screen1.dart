import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Screen1")
      ),
      body:Container(
        color:Colors.blueGrey,
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