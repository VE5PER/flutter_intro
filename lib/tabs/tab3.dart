import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab3 extends StatelessWidget {
  const tab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Text(
              "TAB BODY 3",
              style: TextStyle(fontSize: 50,
              color: Colors.blue),
            )),
      ),
    );
  }
}
