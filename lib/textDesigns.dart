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
            child: Text("This is a text",
                style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    //backgroundColor: Colors.blue,
                    wordSpacing: 5.0,
                    letterSpacing: 10.0,
                    decoration: TextDecoration.combine([
                      TextDecoration.lineThrough,
                      TextDecoration.underline,
                      TextDecoration.overline,
                    ]),
                    // decorationColor: Colors.green,
                    decorationStyle: TextDecorationStyle.wavy,
                    fontFamily: "Calibri",
                    shadows: [
                      Shadow(
                        color:  Colors.black,
                        blurRadius: 8.0,
                        offset: Offset(5,5),
                      ),
                    ]
                ),
                textAlign: TextAlign.center,
                softWrap: false,
                overflow: TextOverflow.ellipsis)),
      ),
    );
  }
}
