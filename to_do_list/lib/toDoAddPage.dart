import 'package:flutter/material.dart';
import 'package:to_do_list/types.dart';
import 'constants.dart';
class ToDoAppPage extends StatefulWidget {
  @override
  _ToDoAppPageState createState() => _ToDoAppPageState();
}

class _ToDoAppPageState extends State<ToDoAppPage> {
  String _titulo;
  DateTime _fecha;
  int _prioridad;
  Categoria _categoria;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:200 ,
      height:200 ,
      child:
      Stack(children: <Widget>[
        Column(children: <Widget>[
        ],),
        Align( alignment: Alignment.bottomRight,
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
    ,);
  }
}

Todo_add (String _titulo,DateTime _fecha,String _descripicion,int _prioridad){
  paraHacer.add(ToDo(_titulo,_descripicion,_fecha,_prioridad));
}