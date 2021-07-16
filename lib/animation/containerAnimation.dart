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
  double width = 200;
  var shape=BoxShape.circle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedContainer(
              height: height,
              width: width,
              duration: Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              decoration: BoxDecoration(
                shape: shape,
                color: Colors.red
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    height>100?height-=100:height+=100;
                    width>100?width-=100:width+=100;
                    shape==BoxShape.circle?shape=BoxShape.rectangle:shape=BoxShape.circle;


                  });
                },
                child: Text("MAGIC")),
          ],
        ),
      ),
    );
  }
}
