import 'package:flutter/scheduler.dart';
import 'types.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
List <Prioridad> prioridades=[
Prioridad("Fecha", Icons.event_note),
Prioridad("Exigencia", Icons.gesture),
Prioridad("Prioridad", Icons.priority_high)
];
/*
void prioritySelection(Prioridad _priority){
  setState(() {
    actualpriority=_priority;
  });
}
*/
class TextPrioridades extends StatelessWidget {
  final Prioridad _prioridad;
  TextPrioridades(this._prioridad);
  @override
  Widget build(BuildContext context) {
    return Text(_prioridad.nombre,
    style: TextStyle(
      color:Colors.red,
      fontSize: 23,

    ),
      
    );
  }
}

class PrioritySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:
      ListView(children: <Widget>[
        for(var item in prioridades ) Column(children: <Widget>[
                  TextPrioridades(item)
      ],)
      
      ]));
  }
}

class PriorityShow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
     // prioritySelection();
}
    )
      
    ;
  }
}
