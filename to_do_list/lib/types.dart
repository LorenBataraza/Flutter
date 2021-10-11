import 'package:flutter/material.dart';
class ToDo {
  String titulo;
  DateTime fecha; 
  String descripicion;
  int prioridad;
  Categoria categoria=Categoria("General",Colors.white);
  Key toDoKey;
  ToDo(this.titulo,this.descripicion,this.fecha,this.prioridad,{categoria});
}

List<ToDo> paraHacer=[
ToDo("HACER CACA","",DateTime.now(),1)
];

List<ToDo> terminado=[

];


class ToDoBox extends StatelessWidget {
  final ToDo _toDo ;
  ToDoBox(this._toDo);
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.only(left:10) ,
      child:
    Container(
      color: Colors.grey[800],
      child:Row(
        children: <Widget>[
        Icon(Icons.view_list,color:Colors.white70),
        Expanded(child:
        Column(children: <Widget>[
          Text(_toDo.titulo,
          style:TextStyle(
            color:Colors.white70,
            fontSize: 23,
          ) ,
          ),
          Row(children: <Widget>[
          Icon(Icons.today,color:Colors.white70),
          Text((_toDo.fecha).toString(),style: TextStyle(color:Colors.white70),),
          Icon(Icons.format_list_numbered,color:Colors.white70),
          Text((_toDo.prioridad).toString(),style: TextStyle(color:Colors.white70),),
        ]),
        ],)
        )
      ],)
    ));
  }
}

class Categoria{
  Color catColor=Colors.white;
  String nombre;
  Key catKey;
  Categoria(this.nombre,this.catColor);

}


List<Categoria> categories=[
  Categoria("General", Colors.white),
];


class Prioridad{
  String nombre;
  IconData icono;
  Prioridad(this.nombre,this.icono);
}