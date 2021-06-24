import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Media Query")),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.2,
            height: MediaQuery.of(context).size.height*0.3,
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.2,
           decoration: BoxDecoration(color: Colors.green),
          )
        ],
      ),
    );
  }
}
