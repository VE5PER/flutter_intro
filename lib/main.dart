import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("THE APP")),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
            child: RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "Need an account?",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          )
        ),
        TextSpan(
          text:" Sign Up",
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue,
            decoration: TextDecoration.underline,
          )

        ),
      ]
    )),
    )
      ),
    );
  }
}
