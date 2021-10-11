import 'package:flutter/material.dart';
import 'package:video/screen/home_screen.dart';
import 'package:video/screen/launch_screen.dart';
import 'constants.dart';

void main() => runApp(VoteApp());

class VoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      "/": (context) => Scaffold(
            body: LaunchScreen(),
          ),
      "/home": (context) => Scaffold(
            appBar: AppBar(
              title: Text(kAppName),
            ),
            body: HomeScreen(),
          ),
      '/result': (context) => Scaffold(
            appBar: AppBar(
              title: Text("Result: "),
              leading: IconButton(
                icon: Icon(Icons.home),
                color: Colors.white
              ),
            ),
          )
    });
  }
}
