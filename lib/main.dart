import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.lightGreenAccent,
    appBar: AppBar(
      title: Text("This is my first app!!!"),
      backgroundColor: Colors.blue[500],
    ),
    body: Center(
        /*
        child: Image(
          image: NetworkImage(
            'https://i.pinimg.com/originals/ed/51/6a/ed516a5eeee9a2daa8d3a6fd89be66cf.jpg'
          ),
        ),*/
        child: Text(
      "Hello there",
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.red
      ),
    )),
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Tapping");
        },
        backgroundColor: Colors.red,
        child: Text("Tap")),
  )));
}
