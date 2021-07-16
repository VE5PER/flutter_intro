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
  double height = 200;
  double width = 500;
  var shape = BoxShape.circle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        builder: (context, double value, child) => Center(
            child: Image.asset(
          'assets/images/corgi1.jpg',
          height: value,
        )),
        duration: Duration(milliseconds: 1500),
        tween: Tween<double>(begin: 15, end: height),
        onEnd: (){
          setState(() {
            height=height==500?50:500;
          });
        },
      ),
    );
  }
}
