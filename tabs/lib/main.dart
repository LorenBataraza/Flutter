import 'package:flutter/material.dart';

void main() => runApp(TabApp());

class TabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DefaultTabController(
        length: 3 ,
        child: Scaffold(
          appBar: AppBar(
            title:Text("Tab Demo"),
            bottom:TabBar(tabs: [
              Container(
                child:Text("A",
                style:TextStyle(
                  fontFamily: "Roboto Bold",
                  fontSize: 26
                ),
                )
              ),
              Text("B"),
              Text("Finish"),
            ],),
          ),
          body:TabBarView(children: [
            Center(child:Text("A for Apple")),
            Center(child:Text("B for Book")),
            Center(child:Text("Every Finished")),
          ])


        ))
    );
  }
}

class APage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(child:Text("A for Apple"))
      
    );
  }
}