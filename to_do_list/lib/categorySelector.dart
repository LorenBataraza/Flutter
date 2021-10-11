import 'types.dart';
import 'package:flutter/material.dart';
import 'constants.dart';


class CategorySelector extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.transparent,
    body: 
    Center(child:Container(
      width:200 ,
      height:200 ,
      color: Colors.green,
      child:Stack(children: <Widget>[
      ReorderableListView(children: null, onReorder: null),
      Align( alignment: FractionalOffset(1.0, 0.0),
        child:
        GestureDetector(
            onTap: (){
            },
            child:Padding(padding:EdgeInsets.all(15.0),
            child:Container(
              child:Center(
            child:Icon(Icons.playlist_add_check,color:Colors.white70,size:37 ,)),
            width:radio_boton,
            height: radio_boton,
            decoration:BoxDecoration(shape:BoxShape.circle,color:Colors.red[800], ), 
          )))),
    ],)  
    )),);
  }
}