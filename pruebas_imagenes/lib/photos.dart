import 'FavPage.dart';
import 'package:flutter/material.dart';
class Imagen {
  String _titulo;
  String _fecha;
  String _assetPath;
  bool fav =false;
  Imagen(this._titulo,this._fecha,this._assetPath);
}
class ImagePage extends StatefulWidget {
  final Imagen _image;
  ImagePage(this._image);
  @override
  _ImagePageState createState() => _ImagePageState();
}
class _ImagePageState extends State<ImagePage> {
  void _favChanger() {
    setState(() {
    (widget._image.fav==false)?widget._image.fav=true:widget._image.fav=false;
 });}
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget._image._assetPath,
        style: TextStyle(
          fontFamily: "Roboto Bold",
          fontSize: 32,
          fontWeight: FontWeight.bold
        ),
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(children: <Widget>[
            Center(child: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Image.asset(
          "assets/images/" + widget._image._assetPath + ".jpg",
          fit: BoxFit.fill,
        ))),
            GestureDetector(
            onTap: (){
              _favChanger();
            },
            child:Container(
            child:(widget._image.fav==true)? Icon(Icons.star, color: Colors.indigoAccent[700],size: 40):Icon(Icons.star_border, color: Colors.indigoAccent[700],size: 40),
            color:Colors.transparent,
            alignment: FractionalOffset(1.0, 0.0),
          )),
        ],),
        Text(widget._image._titulo,
          style: TextStyle(
          fontFamily: "Roboto Bold",
          fontSize: 30,
          fontWeight: FontWeight.bold
          )),
          Text(widget._image._fecha,
          style: TextStyle(
          fontFamily: "Roboto Bold",
          fontSize: 20,
          fontWeight: FontWeight.bold
          ))
        ],),
    );
  }
}

class ImageBox extends StatefulWidget {
  final Imagen _image;
  ImageBox(this._image);
  @override
  _ImageBoxState createState() => _ImageBoxState();
}
class _ImageBoxState extends State<ImageBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(child:
    Container(
        padding: EdgeInsets.all(espacio),
        width: 200,
        height: 200,
        decoration: BoxDecoration(color: Colors.grey,
        image: DecorationImage(
          image: new AssetImage(
              'assets/images/' + widget._image._assetPath +".jpg"),
          fit: BoxFit.fill,
        ),
        )),
        onTap:(){
            Navigator.push( 
                        context, 
                        MaterialPageRoute( 
                           builder: (context) => ImagePage(widget._image)));
            },
        );
  }
}
