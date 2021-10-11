import 'package:flutter/material.dart';
import 'constants.dart';
class CategoryAdd extends StatefulWidget {
  @override
  _CategoryAddState createState() => _CategoryAddState();
}

class _CategoryAddState extends State<CategoryAdd> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.transparent,
      body:Center(
    child: Container(
      height: 200,
        width: 200,
        child:Stack(
      children: <Widget>[
        /*ReorderableListView(children: ,
        onReorder: null),
*/

        Align( alignment:Alignment.bottomRight,
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
      ],),)
    ,));
  }
}