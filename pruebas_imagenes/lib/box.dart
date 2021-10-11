/*
import 'package:flutter/material.dart';
class BasicBox extends StatelessWidget {
final double _boxWidth;
final double _boxHeight;
final String _boxText;
Color _boxColor;
double _fontSize;
Color _fontColor;
String _fontFamily;
BasicBox(this._boxWidth,this._boxHeight,this._boxText,{Color boxColor:Colors.blue,Color fontColor:Colors.white,double fontSize:28.0,String fontFamily: "Roboto Bold"}){
 _boxColor = boxColor;
 _fontSize=fontSize;
 _fontColor=fontColor;
 _fontFamily=fontFamily;
}

  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
        color: _boxColor
      ),
      child:Center(
           child: Text(_boxText,
                style:TextStyle(
                   fontFamily:_fontFamily,
                   fontSize:_fontSize,
                   color: _fontColor
                 )
            ),
         ) ,
        width: _boxWidth,
        height: _boxHeight,      
    );
}
*/

import 'package:flutter/material.dart';
class BasicBox extends StatelessWidget {
final double _boxWidth;
final double _boxHeight;
final String _boxText;
final Color boxColor;
final double fontSize;
final Color fontColor;
final String fontFamily;
final bool centerText;
BasicBox(this._boxWidth,this._boxHeight,this._boxText,{this.boxColor, this.fontColor,this.fontSize,this.fontFamily,this.centerText});
  Widget build(BuildContext context) => Container(
      width: _boxWidth,
      height: _boxHeight,    
      child: (centerText??true)?
      Center(child:
       Text(_boxText,
       style:TextStyle(
          fontFamily:fontFamily??"Roboto Bold",
          fontSize:fontSize??28.0,
          color: fontColor??Colors.white
          )),)
      :Text(_boxText,
      style:TextStyle(
         fontFamily:fontFamily??"Roboto Bold", 
         fontSize:fontSize??28.0,
         color: fontColor??Colors.white)),
      decoration: BoxDecoration(
        color: boxColor??Colors.blue[900]
      ),
    );
}
