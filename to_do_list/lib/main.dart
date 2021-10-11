import 'package:flutter/rendering.dart';
import 'package:to_do_list/categoryAdd.dart';
import 'package:to_do_list/types.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'toDoAddPage.dart';
import 'painters.dart';
import 'categorySelector.dart';
import 'prioritySelector.dart';

void main() => runApp(ToDoApp());
class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:"/" ,
      routes:{
        '/': (context)=> HomeScreen(),
        'CategorySelector': (context) => CategorySelector(),
        'CategoryAdd': (context) => CategoryAdd(),
        "PriorytiSelector":(context) => PrioritySelector(),
        "toDoApp":(context) => ToDoAppPage(),

      }
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body:
      
      Column(children: <Widget>[
    Row(children: <Widget>[
      Padding(padding:EdgeInsets.only(left:20) ,
      child:
          GestureDetector(
            onTap:(){
            Navigator.pushNamed(context,"CategorySelector");
          },
          child: 
          Container(
            
            height: 120,
            width:  120,
            decoration: BoxDecoration(
             color:Colors.red[700],    
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(20),))
          ))),
Padding(padding:EdgeInsets.only(right:20) ,
      child:
          GestureDetector(
            onTap:(){
            Navigator.push( 
                        context, 
                        MaterialPageRoute( 
                           builder: (context)=>PrioritySelector() ));
                   },
          child:
          Container(
            width:  120,
            height: 120,
            decoration: BoxDecoration(   
              color:Colors.red[900],
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(20),))
            
          )))
        ],),

      Expanded(child: 
      Stack(children: <Widget>[ 
        ListView(children: <Widget>[for(var item in paraHacer ) Column(children: <Widget>[
                  ToDoBox(item)
      ],)
      ]),

 CustomPaint(
          painter: CurvePainter1(),
          child: Container(
        )),
        CustomPaint(
          painter: CurvePainter2(),
          child: Container(
        )),
 Align( alignment: FractionalOffset(0.0, 1.0),
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
],),


    floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[800],
        onPressed: (){
          return Center(child:
            ToDoAppPage()
          );
      },
      child: Icon(Icons.add,color:Colors.white70,size: 40,),
      ),
    );  
}}

/*
title:Center(child:
      RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text:"Holas FedeS !!!!", style:TextStyle(
            fontFamily:"Roboto Bold",
           fontSize: 28,
           color:Colors.white
            )
          ),
          
          TextSpan(
            text:"", style:TextStyle(
            fontFamily:"Roboto Bold",
           fontSize: 28,
           color:Colors.yellow[700]
            )
          ), 
        ]),
        )
      )),
*/