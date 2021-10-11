import 'package:flutter/material.dart';
import 'box.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

 @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Image.asset(
          _assetPath,
          fit: BoxFit.cover,
        ));
  }
}


class DisplayFoto extends StatelessWidget {
  final String assetPath;
  final String descripcion;
  final String titulo;
    DisplayFoto({Key key, this.titulo,this.descripcion,this.assetPath}) : super(key:key);
   @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.cyan,      
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
        Center(
        child:
       Container(
          child: Text(
            titulo,
            style: TextStyle(
              fontFamily: "Roboto Bold",
              fontSize: 20,
              fontWeight: FontWeight.bold 
            ),
          )
          )),
          SizedBox(height: 8),
      ImageBanner("assets/images/" + assetPath),
      SizedBox(height: 8),
      Text(descripcion,
            style: TextStyle(
              fontFamily: "Roboto Bold",
              fontSize: 18,
            ),
    )
    ],)
    );
  }
}
