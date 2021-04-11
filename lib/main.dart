import 'package:flutter/material.dart';
import 'confetti.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FlatButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Confetti()));
        },
        color: Colors.deepPurpleAccent,
        child: Text("Press Me",
          style: TextStyle(
            color: Colors.white,
          ),),
      )),
    );
  }
}
