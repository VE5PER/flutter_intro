import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab2 extends StatelessWidget {
  const tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Text(
              "TAB BODY 2",
              style: TextStyle(fontSize: 50,
              color: Colors.green),
            )),
      ),
    );
  }
}
