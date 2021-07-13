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
  double value = 50;
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.round().toString(),
              style: TextStyle(fontSize: 40),
            ),
            Slider(
              max: 50,
              min: 0,
              value: value,
              divisions: 20,
              activeColor: Colors.blue,
              inactiveColor: Colors.red,
              label: value.round().toString(),
              onChanged: (val) {
                setState(() {
                  value = val;
                });
              },
            ),
            RangeSlider(
              activeColor: Colors.blue,
              inactiveColor: Colors.red,
              min: 0,
              max: 100,
              labels:
                  RangeLabels(values.start.toString(), values.end.toString()),
              values: values,
              divisions: 100,
              onChanged: (val) {
                setState(() {
                  values = val;
                });
              },
              onChangeStart: (val1) {
                print("Start $val1");
              },
              onChangeEnd: (val2) {
                print("Ending $val2");
              },
            ),
          ],
        ),
      ),
    );
  }
}
