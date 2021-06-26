
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab1 extends StatelessWidget {
  const tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Text(
              "TAB BODY 1",
              style: TextStyle(fontSize: 50,
              color: Colors.red),
            )),
      ),
    );
  }
}

