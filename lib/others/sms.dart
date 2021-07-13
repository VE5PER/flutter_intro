import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<String> rec = ["9445771724", "9123456780"];
  void _sendSMS(String message, List<String> rec) async {
    String results = await sendSMS(message: message, recipients: rec);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send SMS"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _sendSMS("woohoo", rec);
        },
        child: Icon(Icons.sms),
      ),
    );
  }
}
