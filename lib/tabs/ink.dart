import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                count.toString(),
                style: TextStyle(fontSize: 45),
              ),
              InkWell(
                child: Icon(
                  Icons.add,
                  size: 75,
                ),
                onTap: () {
                  setState(() {
                    count += 1;
                  });
                },
                splashColor: Colors.greenAccent,
                hoverColor: Colors.red,
                highlightColor: Colors.blue,
              ),
              InkResponse(
                child: Icon(
                  Icons.add,
                  size: 75,
                ),
                highlightShape: BoxShape.circle,
                onTap: () {
                  setState(() {
                    count += 1;
                  });
                },
                splashColor: Colors.greenAccent,
                hoverColor: Colors.red,
                highlightColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
