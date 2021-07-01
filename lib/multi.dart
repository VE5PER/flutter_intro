import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value1 = '';
    String value2 = '';
    return Scaffold(
      appBar: AppBar(
        title: Text("Base"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (text) {
              value1 = text;
            },
          ),
          TextField(
            onChanged: (text) {
              value2 = text;
            },
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyPage2(
                              value1: value1,
                              value2: value2,
                            )));
              },
              child: Text("New Stateless Page"),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyPage3(value: value1)));
              },
              child: Text("New Stateful Page"),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPage2 extends StatelessWidget {
  final value1, value2;
  const MyPage2({Key? key, @required this.value1, @required this.value2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Stateless Page"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value1),
          Text(value2),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Pop page"),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPage3 extends StatefulWidget {
  final value;
  const MyPage3({Key? key, @required this.value}) : super(key: key);

  @override
  _MyPage3State createState() => _MyPage3State(value);
}

class _MyPage3State extends State<MyPage3> {
  String value = '';
  _MyPage3State(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Stateful Page"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Pop page"),
            ),
          ),
        ],
      ),
    );
  }
}
