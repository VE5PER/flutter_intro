import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    animation = Tween<double>(begin: 0, end: 2*pi).animate(controller)
      ..addListener(() {
        setState(() {});
      });//..addListener((status) {if(status)});
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Transform.rotate(
      angle: 0,
      child: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/corgi1.jpg'),
        padding: EdgeInsets.all(30),
      ),
    ));
  }
}
