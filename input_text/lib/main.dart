import 'package:flutter/material.dart';

void main() => runApp(MyApp());
final TextEditingController controller = TextEditingController();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Text Example',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String texto="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Input Text Example"),
      backgroundColor: Colors.pink[900],
    ),
    body: Center(child:Column(
      children: <Widget>[
      TextField(
        decoration: InputDecoration(
          hintText:"Escribi lo que se te cante"
        ),
        onSubmitted: (String agregado){
          setState((){
            texto=texto+ "\n" +agregado;
          },
          );
          controller.text="";
        },
       controller:controller
        ),
        Text(texto)
    ],)),
    floatingActionButton: FloatingActionButton(onPressed:(){
      setState(() {
        texto="";
      });
    }
     )
    );
  }
}