
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
